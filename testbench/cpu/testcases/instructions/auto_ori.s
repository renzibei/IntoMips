    .org 0x0
    .global _start
    .set noat
    .set noreorder
    .set nomacro
_start:
    lui  $0, 0xfa1b			# $0=0xfa1b0000
    ori  $0, $0, 0xe7fd			# $0=0x0000e7fd
    lui  $1, 0x9d1d			# $1=0x9d1d0000
    ori  $1, $1, 0xd7e9			# $1=0x9d1dd7e9
    lui  $2, 0xae64			# $2=0xae640000
    ori  $2, $2, 0x74f8			# $2=0xae6474f8
    lui  $3, 0xe74f			# $3=0xe74f0000
    ori  $3, $3, 0xa5fe			# $3=0xe74fa5fe
    lui  $4, 0x990c			# $4=0x990c0000
    ori  $4, $4, 0x6abf			# $4=0x990c6abf
    lui  $5, 0x2488			# $5=0x24880000
    ori  $5, $5, 0x1121			# $5=0x24881121
    lui  $6, 0x75ab			# $6=0x75ab0000
    ori  $6, $6, 0x4632			# $6=0x75ab4632
    lui  $7, 0xeec8			# $7=0xeec80000
    ori  $7, $7, 0x183b			# $7=0xeec8183b
    lui  $8, 0xb2ed			# $8=0xb2ed0000
    ori  $8, $8, 0xf20a			# $8=0xb2edf20a
    lui  $9, 0xe7ad			# $9=0xe7ad0000
    ori  $9, $9, 0xe3af			# $9=0xe7ade3af
    lui  $10, 0xada4			# $10=0xada40000
    ori  $10, $10, 0xed85			# $10=0xada4ed85
    lui  $11, 0x666c			# $11=0x666c0000
    ori  $11, $11, 0x09c3			# $11=0x666c09c3
    lui  $12, 0x16ed			# $12=0x16ed0000
    ori  $12, $12, 0x7742			# $12=0x16ed7742
    lui  $13, 0xb99c			# $13=0xb99c0000
    ori  $13, $13, 0x2762			# $13=0xb99c2762
    lui  $14, 0x8390			# $14=0x83900000
    ori  $14, $14, 0xe873			# $14=0x8390e873
    lui  $15, 0xcc29			# $15=0xcc290000
    ori  $15, $15, 0xf8f3			# $15=0xcc29f8f3
    lui  $16, 0x402e			# $16=0x402e0000
    ori  $16, $16, 0x1f98			# $16=0x402e1f98
    lui  $17, 0x7549			# $17=0x75490000
    ori  $17, $17, 0x598e			# $17=0x7549598e
    lui  $18, 0xc36a			# $18=0xc36a0000
    ori  $18, $18, 0x449d			# $18=0xc36a449d
    lui  $19, 0x5187			# $19=0x51870000
    ori  $19, $19, 0xb604			# $19=0x5187b604
    lui  $20, 0x38c5			# $20=0x38c50000
    ori  $20, $20, 0x7f05			# $20=0x38c57f05
    lui  $21, 0x631d			# $21=0x631d0000
    ori  $21, $21, 0x1a9f			# $21=0x631d1a9f
    lui  $22, 0xf5bf			# $22=0xf5bf0000
    ori  $22, $22, 0x5792			# $22=0xf5bf5792
    lui  $23, 0x9d27			# $23=0x9d270000
    ori  $23, $23, 0x153f			# $23=0x9d27153f
    lui  $24, 0x8cdd			# $24=0x8cdd0000
    ori  $24, $24, 0xb19f			# $24=0x8cddb19f
    lui  $25, 0x48ab			# $25=0x48ab0000
    ori  $25, $25, 0x7690			# $25=0x48ab7690
    lui  $26, 0x16c2			# $26=0x16c20000
    ori  $26, $26, 0xe75c			# $26=0x16c2e75c
    lui  $27, 0x0276			# $27=0x02760000
    ori  $27, $27, 0x17dd			# $27=0x027617dd
    lui  $28, 0x9194			# $28=0x91940000
    ori  $28, $28, 0x7c81			# $28=0x91947c81
    lui  $29, 0xa052			# $29=0xa0520000
    ori  $29, $29, 0xa4a3			# $29=0xa052a4a3
    lui  $30, 0xb842			# $30=0xb8420000
    ori  $30, $30, 0x298e			# $30=0xb842298e
    lui  $31, 0x5579			# $31=0x55790000
    ori  $31, $31, 0x9938			# $31=0x55799938
    ori  $4, $26, 0x9fc5			# $4=0x16c2ffdd
    ori  $16, $21, 0xc4f8			# $16=0x631ddeff
    ori  $6, $8, 0x87c6			# $6=0xb2edf7ce
    ori  $31, $20, 0xc081			# $31=0x38c5ff85
    ori  $25, $31, 0x56d4			# $25=0x38c5ffd5
    ori  $8, $30, 0xa0ff			# $8=0xb842a9ff
    ori  $25, $11, 0x5e37			# $25=0x666c5ff7
    ori  $12, $8, 0xa1a0			# $12=0xb842a9ff
    ori  $1, $25, 0xec8f			# $1=0x666cffff
    ori  $4, $1, 0x93c5			# $4=0x666cffff
    ori  $6, $7, 0x8472			# $6=0xeec89c7b
    ori  $6, $12, 0x68af			# $6=0xb842e9ff
    ori  $31, $16, 0x8353			# $31=0x631ddfff
    ori  $27, $25, 0xdb34			# $27=0x666cdff7
    ori  $23, $22, 0x8c22			# $23=0xf5bfdfb2
    ori  $13, $5, 0x8599			# $13=0x248895b9
    ori  $19, $3, 0x56c6			# $19=0xe74ff7fe
    ori  $12, $22, 0x7b24			# $12=0xf5bf7fb6
    ori  $7, $19, 0xb25e			# $7=0xe74ff7fe
    ori  $31, $22, 0xc866			# $31=0xf5bfdff6
    ori  $29, $20, 0x8d17			# $29=0x38c5ff17
    ori  $7, $31, 0xf6a9			# $7=0xf5bfffff
    ori  $4, $18, 0x62ee			# $4=0xc36a66ff
    ori  $19, $18, 0x1ba5			# $19=0xc36a5fbd
    ori  $7, $22, 0x104f			# $7=0xf5bf57df
    ori  $20, $3, 0x7c00			# $20=0xe74ffdfe
    ori  $29, $16, 0xa9c9			# $29=0x631dffff
    ori  $6, $9, 0x79f4			# $6=0xe7adfbff
    ori  $18, $21, 0x5291			# $18=0x631d5a9f
    ori  $9, $7, 0xae17			# $9=0xf5bfffdf
    ori  $1, $16, 0x20a0			# $1=0x631dfeff
    ori  $8, $24, 0xe1c6			# $8=0x8cddf1df
    ori  $22, $12, 0xcbdf			# $22=0xf5bfffff
    ori  $26, $5, 0x0504			# $26=0x24881525
    ori  $13, $9, 0x0264			# $13=0xf5bfffff
    ori  $5, $29, 0xe075			# $5=0x631dffff
    ori  $11, $6, 0x7dbd			# $11=0xe7adffff
    ori  $5, $11, 0x9118			# $5=0xe7adffff
    ori  $9, $1, 0x5792			# $9=0x631dffff
    ori  $31, $17, 0x8aea			# $31=0x7549dbee
    ori  $3, $10, 0x5bc1			# $3=0xada4ffc5
    ori  $6, $8, 0xd642			# $6=0x8cddf7df
    ori  $2, $6, 0x7205			# $2=0x8cddf7df
    ori  $2, $5, 0x2abe			# $2=0xe7adffff
    ori  $26, $14, 0x6a8d			# $26=0x8390eaff
    ori  $22, $7, 0x1930			# $22=0xf5bf5fff
    ori  $29, $2, 0x202a			# $29=0xe7adffff
    ori  $20, $12, 0xa464			# $20=0xf5bffff6
    ori  $4, $17, 0x5440			# $4=0x75495dce
    ori  $18, $4, 0xc445			# $18=0x7549ddcf
    ori  $30, $20, 0x4540			# $30=0xf5bffff6
    ori  $13, $28, 0x124b			# $13=0x91947ecb
    ori  $23, $18, 0x285f			# $23=0x7549fddf
    ori  $8, $28, 0x5ec7			# $8=0x91947ec7
    ori  $27, $12, 0xc161			# $27=0xf5bffff7
    ori  $31, $19, 0x79a7			# $31=0xc36a7fbf
    ori  $3, $22, 0x8690			# $3=0xf5bfdfff
    ori  $21, $25, 0x32cf			# $21=0x666c7fff
    ori  $0, $3, 0x9149			# $0=0xf5bfdfff
    ori  $5, $31, 0x75d2			# $5=0xc36a7fff
    ori  $20, $24, 0xa3c7			# $20=0x8cddb3df
    ori  $28, $9, 0x1440			# $28=0x631dffff
    ori  $30, $19, 0xc064			# $30=0xc36adffd
    ori  $19, $25, 0x9541			# $19=0x666cdff7
    ori  $16, $4, 0x7e26			# $16=0x75497fee
    ori  $19, $11, 0x48ea			# $19=0xe7adffff
    ori  $20, $0, 0xf140			# $20=0x0000f140
    ori  $5, $20, 0x0858			# $5=0x0000f958
    ori  $20, $16, 0xa6ad			# $20=0x7549ffef
    ori  $23, $27, 0xa64d			# $23=0xf5bfffff
    ori  $16, $28, 0x36c3			# $16=0x631dffff
    ori  $0, $25, 0xbaf3			# $0=0x666cfff7
    ori  $15, $23, 0xdcd3			# $15=0xf5bfffff
    ori  $21, $25, 0x88c6			# $21=0x666cdff7
    ori  $2, $16, 0xce4c			# $2=0x631dffff
    ori  $0, $26, 0x6cc3			# $0=0x8390eeff
    ori  $0, $23, 0x6580			# $0=0xf5bfffff
    ori  $27, $9, 0xe475			# $27=0x631dffff
    ori  $27, $27, 0xc464			# $27=0x631dffff
    ori  $30, $20, 0xf67b			# $30=0x7549ffff
    ori  $6, $0, 0xe2bd			# $6=0x0000e2bd
    ori  $12, $0, 0x5041			# $12=0x00005041
    ori  $19, $21, 0x6e32			# $19=0x666cfff7
    ori  $3, $25, 0xc7ac			# $3=0x666cdfff
    ori  $25, $12, 0x8d4d			# $25=0x0000dd4d
    ori  $6, $21, 0x3f1c			# $6=0x666cffff
    ori  $15, $24, 0xa595			# $15=0x8cddb59f
    ori  $4, $30, 0x8368			# $4=0x7549ffff
    ori  $2, $22, 0x7cd3			# $2=0xf5bf7fff
    ori  $10, $7, 0x8631			# $10=0xf5bfd7ff
    ori  $14, $16, 0x7038			# $14=0x631dffff
    ori  $24, $2, 0xa2a9			# $24=0xf5bfffff
    ori  $2, $19, 0x9282			# $2=0x666cfff7
    ori  $4, $9, 0x07f0			# $4=0x631dffff
    ori  $3, $0, 0xa892			# $3=0x0000a892
    ori  $5, $4, 0x3f1f			# $5=0x631dffff
    ori  $15, $11, 0x7646			# $15=0xe7adffff
    ori  $26, $30, 0x3d84			# $26=0x7549ffff
    ori  $6, $0, 0xce85			# $6=0x0000ce85
    ori  $22, $25, 0x06da			# $22=0x0000dfdf
