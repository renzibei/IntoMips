    .org 0x0
    .global _start
    .set noat
    .set noreorder
    .set nomacro
_start:
    lui  $0, 0x18ea			# $0=0x18ea0000
    ori  $0, $0, 0x1d6d			# $0=0x00001d6d
    lui  $1, 0x0822			# $1=0x08220000
    ori  $1, $1, 0x039a			# $1=0x0822039a
    lui  $2, 0x64c1			# $2=0x64c10000
    ori  $2, $2, 0xa58d			# $2=0x64c1a58d
    lui  $3, 0x7637			# $3=0x76370000
    ori  $3, $3, 0xfced			# $3=0x7637fced
    lui  $4, 0xccf9			# $4=0xccf90000
    ori  $4, $4, 0x2f37			# $4=0xccf92f37
    lui  $5, 0x3e28			# $5=0x3e280000
    ori  $5, $5, 0x58b5			# $5=0x3e2858b5
    lui  $6, 0x2f10			# $6=0x2f100000
    ori  $6, $6, 0xbcbd			# $6=0x2f10bcbd
    lui  $7, 0x1ceb			# $7=0x1ceb0000
    ori  $7, $7, 0x94cc			# $7=0x1ceb94cc
    lui  $8, 0x881d			# $8=0x881d0000
    ori  $8, $8, 0x0c4a			# $8=0x881d0c4a
    lui  $9, 0x1373			# $9=0x13730000
    ori  $9, $9, 0x983a			# $9=0x1373983a
    lui  $10, 0xcabd			# $10=0xcabd0000
    ori  $10, $10, 0x91cf			# $10=0xcabd91cf
    lui  $11, 0x1b53			# $11=0x1b530000
    ori  $11, $11, 0xdef4			# $11=0x1b53def4
    lui  $12, 0x216a			# $12=0x216a0000
    ori  $12, $12, 0x31ac			# $12=0x216a31ac
    lui  $13, 0x157c			# $13=0x157c0000
    ori  $13, $13, 0xd43c			# $13=0x157cd43c
    lui  $14, 0x0600			# $14=0x06000000
    ori  $14, $14, 0xc3ff			# $14=0x0600c3ff
    lui  $15, 0xc7fb			# $15=0xc7fb0000
    ori  $15, $15, 0xcc24			# $15=0xc7fbcc24
    lui  $16, 0x4141			# $16=0x41410000
    ori  $16, $16, 0x2a78			# $16=0x41412a78
    lui  $17, 0x3b49			# $17=0x3b490000
    ori  $17, $17, 0x1726			# $17=0x3b491726
    lui  $18, 0xbe34			# $18=0xbe340000
    ori  $18, $18, 0xe3d9			# $18=0xbe34e3d9
    lui  $19, 0x13a9			# $19=0x13a90000
    ori  $19, $19, 0x2d1d			# $19=0x13a92d1d
    lui  $20, 0xc85a			# $20=0xc85a0000
    ori  $20, $20, 0x6d6a			# $20=0xc85a6d6a
    lui  $21, 0x39ff			# $21=0x39ff0000
    ori  $21, $21, 0x1ff6			# $21=0x39ff1ff6
    lui  $22, 0xe7d7			# $22=0xe7d70000
    ori  $22, $22, 0x83e7			# $22=0xe7d783e7
    lui  $23, 0x0a94			# $23=0x0a940000
    ori  $23, $23, 0xabdb			# $23=0x0a94abdb
    lui  $24, 0x6337			# $24=0x63370000
    ori  $24, $24, 0x5efc			# $24=0x63375efc
    lui  $25, 0x9d68			# $25=0x9d680000
    ori  $25, $25, 0xa9c9			# $25=0x9d68a9c9
    lui  $26, 0x61ff			# $26=0x61ff0000
    ori  $26, $26, 0xe740			# $26=0x61ffe740
    lui  $27, 0xb504			# $27=0xb5040000
    ori  $27, $27, 0x8c23			# $27=0xb5048c23
    lui  $28, 0x984c			# $28=0x984c0000
    ori  $28, $28, 0x1697			# $28=0x984c1697
    lui  $29, 0x4558			# $29=0x45580000
    ori  $29, $29, 0x40da			# $29=0x455840da
    lui  $30, 0x132b			# $30=0x132b0000
    ori  $30, $30, 0xb312			# $30=0x132bb312
    lui  $31, 0x8dac			# $31=0x8dac0000
    ori  $31, $31, 0xeb8a			# $31=0x8daceb8a
    andi  $7, $28, 0x24a1			# $7=0x00000481
    andi  $28, $13, 0xdaca			# $28=0x0000d008
    andi  $31, $9, 0xadc8			# $31=0x00008808
    andi  $17, $8, 0x3b98			# $17=0x00000808
    andi  $15, $30, 0xbc7a			# $15=0x0000b012
    andi  $3, $31, 0xfb4b			# $3=0x00008808
    andi  $9, $6, 0x894a			# $9=0x00008808
    andi  $10, $27, 0x505b			# $10=0x00000003
    andi  $1, $7, 0xaacf			# $1=0x00000081
    andi  $10, $31, 0x7933			# $10=0x00000800
    andi  $14, $11, 0xf385			# $14=0x0000d284
    andi  $20, $30, 0x9644			# $20=0x00009200
    andi  $8, $3, 0x8ddb			# $8=0x00008808
    andi  $3, $26, 0x0c4c			# $3=0x00000440
    andi  $15, $20, 0x142e			# $15=0x00001000
    andi  $20, $25, 0xd417			# $20=0x00008001
    andi  $27, $4, 0x342e			# $27=0x00002426
    andi  $16, $19, 0x32b0			# $16=0x00002010
    andi  $18, $6, 0x59a1			# $18=0x000018a1
    andi  $11, $3, 0x0e25			# $11=0x00000400
