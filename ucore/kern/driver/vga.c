#include "vga.h"
#include <thumips.h>


void vga_putc(int c) {
    if (c >= 0 && c <= 127) {
        if (c >= 32 && c <= 126) {
            vga_putc_visible(c);
        } else {
            vga_putc_controll(c);
        }
    }
}

#ifdef VGA_NAIVE
static int BUF[VGA_VSIZE][VGA_HSIZE] = {{0}};
static int cursor_h = 0, cursor_v = 0;

void vga_putc_visible(int c) {
    BUF[cursor_v][cursor_h] = c;
    vga_write(cursor_v, cursor_h, c, 0);
    if (cursor_h == VGA_HSIZE - 1) {
        if (cursor_v == VGA_VSIZE - 1) {
            //scroll
            vga_scroll();
            cursor_h = 0;
        } else {
            cursor_h = 0;
            cursor_v += 1;
        }
    } else {
        //正常更新
        cursor_h += 1;
    }
    vga_set_cursor_mode();
}

void vga_putc_controll(int c) {
    switch (c) {
        //case LF:
            //换行
        case DEL: {
            //退格
        }
        case BS: {
            //退格
            if (cursor_h != 0) {
                //只支持同一行退格
                BUF[cursor_v][cursor_h] = SPACE;
                vga_write(cursor_v, cursor_h, SPACE, 0);
                cursor_h--;
            }
            vga_set_cursor_mode();
            break;
        }

        case LF: {
            //回车
            int h;
            for (h = cursor_h; h < VGA_HSIZE; h++) {
                //清空当前行剩下部分
                BUF[cursor_v][h] = SPACE;
                vga_write(cursor_v, h, SPACE, 0);
            }
 
            if (cursor_v == VGA_VSIZE - 1) {
                vga_scroll();
                cursor_h = 0;
            } else {
                cursor_v += 1;
                cursor_h = 0;
            }

            vga_set_cursor_mode();
            break;
        }
        default: break;
    }
}

void vga_scroll() {
    int h, v;
    for (v = 0; v < VGA_VSIZE - 1; v++) {
        for (h = 0; h < VGA_HSIZE; h++) {
            BUF[v][h] = BUF[v + 1][h];
            vga_write(v, h, BUF[v][h], 0);
        }
    }
    for (h = 0; h < VGA_HSIZE; h++) {
        //最后一行
        BUF[VGA_VSIZE - 1][h] = SPACE;
        vga_write(VGA_VSIZE - 1, h, SPACE, 0);
    }
}

void vga_set_cursor_mode() {
    vga_write(cursor_v, cursor_h, BUF[cursor_v][cursor_h], 1);
}
#endif

void vga_write(int v, int h, int c, int cursor_mode) {
    //static int color = 0;
    //color = color == 255? 0: color + 1;
    //outw(VGA_BASE + v * VGA_HSIZE + h, (0x3 << 16) | ((0xe0) << 8) | (c & 0xff));
    //outw(VGA_BASE + v * VGA_HSIZE + h, ((0xe0) << 8) | (c & 0xff));
    //outw(VGA_BASE + v * VGA_HSIZE + h, VGA_COLOR_CHAR(1, 0, 0, c));
    outw(VGA_BASE + v * VGA_HSIZE + h, VGA_COLOR_CHAR(cursor_mode, 0, 0, c));
    //outw(VGA_BASE + v * VGA_HSIZE + h, (0x3 << 16) | (((0xe0) & 0xff) << 8)  | (c & 0xff));
    //outw(VGA_BASE + v * VGA_HSIZE + h, (c & 0xff));
    //outb(VGA_BASE + v * VGA_HSIZE + h, 0);
    __asm__ __volatile__("nop");
    __asm__ __volatile__("nop");
}
