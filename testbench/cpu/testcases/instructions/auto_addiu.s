    .org 0x0
    .global _start
    .set noat
    .set noreorder
    .set nomacro
_start:
    lui  $0, 0x7a74			# $0=0x7a740000
    ori  $0, $0, 0x5e0b			# $0=0x00005e0b
    lui  $1, 0x8473			# $1=0x84730000
    ori  $1, $1, 0xd11b			# $1=0x8473d11b
    lui  $2, 0x1a12			# $2=0x1a120000
    ori  $2, $2, 0xe66c			# $2=0x1a12e66c
    lui  $3, 0x8260			# $3=0x82600000
    ori  $3, $3, 0xaa47			# $3=0x8260aa47
    lui  $4, 0xe4ac			# $4=0xe4ac0000
    ori  $4, $4, 0x6430			# $4=0xe4ac6430
    lui  $5, 0xcc66			# $5=0xcc660000
    ori  $5, $5, 0x1f70			# $5=0xcc661f70
    lui  $6, 0xa423			# $6=0xa4230000
    ori  $6, $6, 0x4c07			# $6=0xa4234c07
    lui  $7, 0xbfff			# $7=0xbfff0000
    ori  $7, $7, 0x57f1			# $7=0xbfff57f1
    lui  $8, 0xd9b6			# $8=0xd9b60000
    ori  $8, $8, 0xea89			# $8=0xd9b6ea89
    lui  $9, 0x3c83			# $9=0x3c830000
    ori  $9, $9, 0x792e			# $9=0x3c83792e
    lui  $10, 0x9e0b			# $10=0x9e0b0000
    ori  $10, $10, 0xa54c			# $10=0x9e0ba54c
    lui  $11, 0xdc32			# $11=0xdc320000
    ori  $11, $11, 0x8b30			# $11=0xdc328b30
    lui  $12, 0xde87			# $12=0xde870000
    ori  $12, $12, 0x1a49			# $12=0xde871a49
    lui  $13, 0xefad			# $13=0xefad0000
    ori  $13, $13, 0xd1f2			# $13=0xefadd1f2
    lui  $14, 0x4941			# $14=0x49410000
    ori  $14, $14, 0xcb07			# $14=0x4941cb07
    lui  $15, 0x663a			# $15=0x663a0000
    ori  $15, $15, 0xe3c3			# $15=0x663ae3c3
    lui  $16, 0x97b2			# $16=0x97b20000
    ori  $16, $16, 0x42fa			# $16=0x97b242fa
    lui  $17, 0x1eb8			# $17=0x1eb80000
    ori  $17, $17, 0x75d5			# $17=0x1eb875d5
    lui  $18, 0x39c0			# $18=0x39c00000
    ori  $18, $18, 0x434f			# $18=0x39c0434f
    lui  $19, 0x679c			# $19=0x679c0000
    ori  $19, $19, 0xf09a			# $19=0x679cf09a
    lui  $20, 0xd786			# $20=0xd7860000
    ori  $20, $20, 0x2811			# $20=0xd7862811
    lui  $21, 0xc310			# $21=0xc3100000
    ori  $21, $21, 0xdf0a			# $21=0xc310df0a
    lui  $22, 0xc42c			# $22=0xc42c0000
    ori  $22, $22, 0xb5c4			# $22=0xc42cb5c4
    lui  $23, 0x78e3			# $23=0x78e30000
    ori  $23, $23, 0xbc62			# $23=0x78e3bc62
    lui  $24, 0x3638			# $24=0x36380000
    ori  $24, $24, 0x353a			# $24=0x3638353a
    lui  $25, 0x918e			# $25=0x918e0000
    ori  $25, $25, 0x5dbb			# $25=0x918e5dbb
    lui  $26, 0xe0c3			# $26=0xe0c30000
    ori  $26, $26, 0x32f8			# $26=0xe0c332f8
    lui  $27, 0xe699			# $27=0xe6990000
    ori  $27, $27, 0x2c97			# $27=0xe6992c97
    lui  $28, 0x1b28			# $28=0x1b280000
    ori  $28, $28, 0x1eee			# $28=0x1b281eee
    lui  $29, 0xee2b			# $29=0xee2b0000
    ori  $29, $29, 0x98dc			# $29=0xee2b98dc
    lui  $30, 0x7c12			# $30=0x7c120000
    ori  $30, $30, 0xa4f9			# $30=0x7c12a4f9
    lui  $31, 0x44da			# $31=0x44da0000
    ori  $31, $31, 0xfc80			# $31=0x44dafc80
    addiu  $8, $2, 0x12ee			# $8=0x1a12f95a
    addiu  $16, $16, 0x679d			# $16=0x97b2aa97
    addiu  $21, $0, 0x5ba4			# $21=0x00005ba4
    addiu  $24, $16, 0xa760			# $24=0x97b251f7
    addiu  $4, $2, 0x4410			# $4=0x1a132a7c
    addiu  $6, $31, 0x2314			# $6=0x44db1f94
    addiu  $29, $27, 0x110d			# $29=0xe6993da4
    addiu  $17, $3, 0x142e			# $17=0x8260be75
    addiu  $20, $31, 0x69e5			# $20=0x44db6665
    addiu  $27, $2, 0x8b5f			# $27=0x1a1271cb
    addiu  $5, $13, 0x24a1			# $5=0xefadf693
    addiu  $3, $7, 0x19e7			# $3=0xbfff71d8
    addiu  $26, $5, 0x37dd			# $26=0xefae2e70
    addiu  $18, $7, 0xd0ff			# $18=0xbfff28f0
    addiu  $9, $23, 0x642a			# $9=0x78e4208c
    addiu  $12, $12, 0x12a5			# $12=0xde872cee
    addiu  $13, $4, 0x2f4a			# $13=0x1a1359c6
    addiu  $22, $15, 0x61e0			# $22=0x663b45a3
    addiu  $2, $9, 0x4ca4			# $2=0x78e46d30
    addiu  $31, $21, 0xbeef			# $31=0x00001a93
