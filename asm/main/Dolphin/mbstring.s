.include "macros.inc"

.section .text, "ax"  # 0x800056A0 - 0x800E2460

.global wcstombs
wcstombs:
/* 800D29B0 000CF910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D29B4 000CF914  7C 08 02 A6 */	mflr r0
/* 800D29B8 000CF918  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D29BC 000CF91C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800D29C0 000CF920  7C 7C 1B 79 */	or. r28, r3, r3
/* 800D29C4 000CF924  7C BD 2B 78 */	mr r29, r5
/* 800D29C8 000CF928  3B E0 00 00 */	li r31, 0
/* 800D29CC 000CF92C  41 82 00 0C */	beq lbl_800D29D8
/* 800D29D0 000CF930  28 04 00 00 */	cmplwi r4, 0
/* 800D29D4 000CF934  40 82 00 0C */	bne lbl_800D29E0
lbl_800D29D8:
/* 800D29D8 000CF938  38 60 00 00 */	li r3, 0
/* 800D29DC 000CF93C  48 00 00 D8 */	b lbl_800D2AB4
lbl_800D29E0:
/* 800D29E0 000CF940  7C 9E 23 78 */	mr r30, r4
/* 800D29E4 000CF944  48 00 00 C4 */	b lbl_800D2AA8
lbl_800D29E8:
/* 800D29E8 000CF948  A0 DE 00 00 */	lhz r6, 0(r30)
/* 800D29EC 000CF94C  28 06 00 00 */	cmplwi r6, 0
/* 800D29F0 000CF950  40 82 00 10 */	bne lbl_800D2A00
/* 800D29F4 000CF954  38 00 00 00 */	li r0, 0
/* 800D29F8 000CF958  7C 1C F9 AE */	stbx r0, r28, r31
/* 800D29FC 000CF95C  48 00 00 B8 */	b lbl_800D2AB4
lbl_800D2A00:
/* 800D2A00 000CF960  80 02 91 68 */	lwz r0, lbl_804DA188@sda21(r2)
/* 800D2A04 000CF964  28 06 00 80 */	cmplwi r6, 0x80
/* 800D2A08 000CF968  3B DE 00 02 */	addi r30, r30, 2
/* 800D2A0C 000CF96C  90 01 00 08 */	stw r0, 8(r1)
/* 800D2A10 000CF970  40 80 00 0C */	bge lbl_800D2A1C
/* 800D2A14 000CF974  3B 60 00 01 */	li r27, 1
/* 800D2A18 000CF978  48 00 00 18 */	b lbl_800D2A30
lbl_800D2A1C:
/* 800D2A1C 000CF97C  28 06 08 00 */	cmplwi r6, 0x800
/* 800D2A20 000CF980  40 80 00 0C */	bge lbl_800D2A2C
/* 800D2A24 000CF984  3B 60 00 02 */	li r27, 2
/* 800D2A28 000CF988  48 00 00 08 */	b lbl_800D2A30
lbl_800D2A2C:
/* 800D2A2C 000CF98C  3B 60 00 03 */	li r27, 3
lbl_800D2A30:
/* 800D2A30 000CF990  2C 1B 00 02 */	cmpwi r27, 2
/* 800D2A34 000CF994  38 A1 00 0C */	addi r5, r1, 0xc
/* 800D2A38 000CF998  7C A5 DA 14 */	add r5, r5, r27
/* 800D2A3C 000CF99C  41 82 00 2C */	beq lbl_800D2A68
/* 800D2A40 000CF9A0  40 80 00 10 */	bge lbl_800D2A50
/* 800D2A44 000CF9A4  2C 1B 00 01 */	cmpwi r27, 1
/* 800D2A48 000CF9A8  40 80 00 30 */	bge lbl_800D2A78
/* 800D2A4C 000CF9AC  48 00 00 3C */	b lbl_800D2A88
lbl_800D2A50:
/* 800D2A50 000CF9B0  2C 1B 00 04 */	cmpwi r27, 4
/* 800D2A54 000CF9B4  40 80 00 34 */	bge lbl_800D2A88
/* 800D2A58 000CF9B8  54 C0 06 BE */	clrlwi r0, r6, 0x1a
/* 800D2A5C 000CF9BC  54 C6 D5 BE */	rlwinm r6, r6, 0x1a, 0x16, 0x1f
/* 800D2A60 000CF9C0  60 00 00 80 */	ori r0, r0, 0x80
/* 800D2A64 000CF9C4  9C 05 FF FF */	stbu r0, -1(r5)
lbl_800D2A68:
/* 800D2A68 000CF9C8  54 C0 06 BE */	clrlwi r0, r6, 0x1a
/* 800D2A6C 000CF9CC  54 C6 D5 BE */	rlwinm r6, r6, 0x1a, 0x16, 0x1f
/* 800D2A70 000CF9D0  60 00 00 80 */	ori r0, r0, 0x80
/* 800D2A74 000CF9D4  9C 05 FF FF */	stbu r0, -1(r5)
lbl_800D2A78:
/* 800D2A78 000CF9D8  38 81 00 08 */	addi r4, r1, 8
/* 800D2A7C 000CF9DC  7C 04 D8 AE */	lbzx r0, r4, r27
/* 800D2A80 000CF9E0  7C C0 03 78 */	or r0, r6, r0
/* 800D2A84 000CF9E4  98 05 FF FF */	stb r0, -1(r5)
lbl_800D2A88:
/* 800D2A88 000CF9E8  7C 1F DA 14 */	add r0, r31, r27
/* 800D2A8C 000CF9EC  7C 00 E8 40 */	cmplw r0, r29
/* 800D2A90 000CF9F0  41 81 00 24 */	bgt lbl_800D2AB4
/* 800D2A94 000CF9F4  7F 65 DB 78 */	mr r5, r27
/* 800D2A98 000CF9F8  7C 7C FA 14 */	add r3, r28, r31
/* 800D2A9C 000CF9FC  38 81 00 0C */	addi r4, r1, 0xc
/* 800D2AA0 000CFA00  48 00 3C C1 */	bl func_800D6760
/* 800D2AA4 000CFA04  7F FF DA 14 */	add r31, r31, r27
lbl_800D2AA8:
/* 800D2AA8 000CFA08  7C 1F E8 40 */	cmplw r31, r29
/* 800D2AAC 000CFA0C  7F E3 FB 78 */	mr r3, r31
/* 800D2AB0 000CFA10  40 81 FF 38 */	ble lbl_800D29E8
lbl_800D2AB4:
/* 800D2AB4 000CFA14  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800D2AB8 000CFA18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D2ABC 000CFA1C  7C 08 03 A6 */	mtlr r0
/* 800D2AC0 000CFA20  38 21 00 30 */	addi r1, r1, 0x30
/* 800D2AC4 000CFA24  4E 80 00 20 */	blr 

.global mbtowc
mbtowc:
/* 800D2AC8 000CFA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2ACC 000CFA2C  7C 08 02 A6 */	mflr r0
/* 800D2AD0 000CFA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D2AD4 000CFA34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D2AD8 000CFA38  7C 7F 1B 78 */	mr r31, r3
/* 800D2ADC 000CFA3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D2AE0 000CFA40  3B C0 00 00 */	li r30, 0
/* 800D2AE4 000CFA44  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D2AE8 000CFA48  7C 9D 23 79 */	or. r29, r4, r4
/* 800D2AEC 000CFA4C  40 82 00 08 */	bne lbl_800D2AF4
/* 800D2AF0 000CFA50  48 00 00 D8 */	b lbl_800D2BC8
lbl_800D2AF4:
/* 800D2AF4 000CFA54  28 05 00 00 */	cmplwi r5, 0
/* 800D2AF8 000CFA58  40 82 00 0C */	bne lbl_800D2B04
/* 800D2AFC 000CFA5C  3B C0 FF FF */	li r30, -1
/* 800D2B00 000CFA60  48 00 00 C8 */	b lbl_800D2BC8
lbl_800D2B04:
/* 800D2B04 000CFA64  7F A3 EB 78 */	mr r3, r29
/* 800D2B08 000CFA68  7C A4 2B 78 */	mr r4, r5
/* 800D2B0C 000CFA6C  48 00 00 DD */	bl is_utf8_complete
/* 800D2B10 000CFA70  2C 03 00 00 */	cmpwi r3, 0
/* 800D2B14 000CFA74  40 80 00 0C */	bge lbl_800D2B20
/* 800D2B18 000CFA78  3B C0 FF FF */	li r30, -1
/* 800D2B1C 000CFA7C  48 00 00 AC */	b lbl_800D2BC8
lbl_800D2B20:
/* 800D2B20 000CFA80  2C 03 00 02 */	cmpwi r3, 2
/* 800D2B24 000CFA84  7F A4 EB 78 */	mr r4, r29
/* 800D2B28 000CFA88  41 82 00 28 */	beq lbl_800D2B50
/* 800D2B2C 000CFA8C  40 80 00 10 */	bge lbl_800D2B3C
/* 800D2B30 000CFA90  2C 03 00 01 */	cmpwi r3, 1
/* 800D2B34 000CFA94  40 80 00 30 */	bge lbl_800D2B64
/* 800D2B38 000CFA98  48 00 00 3C */	b lbl_800D2B74
lbl_800D2B3C:
/* 800D2B3C 000CFA9C  2C 03 00 04 */	cmpwi r3, 4
/* 800D2B40 000CFAA0  40 80 00 34 */	bge lbl_800D2B74
/* 800D2B44 000CFAA4  88 1D 00 00 */	lbz r0, 0(r29)
/* 800D2B48 000CFAA8  38 9D 00 01 */	addi r4, r29, 1
/* 800D2B4C 000CFAAC  54 1E 35 B2 */	rlwinm r30, r0, 6, 0x16, 0x19
lbl_800D2B50:
/* 800D2B50 000CFAB0  88 04 00 00 */	lbz r0, 0(r4)
/* 800D2B54 000CFAB4  38 84 00 01 */	addi r4, r4, 1
/* 800D2B58 000CFAB8  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 800D2B5C 000CFABC  7F C0 03 78 */	or r0, r30, r0
/* 800D2B60 000CFAC0  54 1E 34 32 */	rlwinm r30, r0, 6, 0x10, 0x19
lbl_800D2B64:
/* 800D2B64 000CFAC4  88 04 00 00 */	lbz r0, 0(r4)
/* 800D2B68 000CFAC8  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 800D2B6C 000CFACC  7F C0 03 78 */	or r0, r30, r0
/* 800D2B70 000CFAD0  54 1E 04 3E */	clrlwi r30, r0, 0x10
lbl_800D2B74:
/* 800D2B74 000CFAD4  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 800D2B78 000CFAD8  40 82 00 0C */	bne lbl_800D2B84
/* 800D2B7C 000CFADC  38 00 00 00 */	li r0, 0
/* 800D2B80 000CFAE0  48 00 00 28 */	b lbl_800D2BA8
lbl_800D2B84:
/* 800D2B84 000CFAE4  28 00 00 80 */	cmplwi r0, 0x80
/* 800D2B88 000CFAE8  40 80 00 0C */	bge lbl_800D2B94
/* 800D2B8C 000CFAEC  38 00 00 01 */	li r0, 1
/* 800D2B90 000CFAF0  48 00 00 18 */	b lbl_800D2BA8
lbl_800D2B94:
/* 800D2B94 000CFAF4  28 00 08 00 */	cmplwi r0, 0x800
/* 800D2B98 000CFAF8  40 80 00 0C */	bge lbl_800D2BA4
/* 800D2B9C 000CFAFC  38 00 00 02 */	li r0, 2
/* 800D2BA0 000CFB00  48 00 00 08 */	b lbl_800D2BA8
lbl_800D2BA4:
/* 800D2BA4 000CFB04  38 00 00 03 */	li r0, 3
lbl_800D2BA8:
/* 800D2BA8 000CFB08  7C 00 18 00 */	cmpw r0, r3
/* 800D2BAC 000CFB0C  41 82 00 0C */	beq lbl_800D2BB8
/* 800D2BB0 000CFB10  3B C0 FF FF */	li r30, -1
/* 800D2BB4 000CFB14  48 00 00 14 */	b lbl_800D2BC8
lbl_800D2BB8:
/* 800D2BB8 000CFB18  28 1F 00 00 */	cmplwi r31, 0
/* 800D2BBC 000CFB1C  41 82 00 08 */	beq lbl_800D2BC4
/* 800D2BC0 000CFB20  B3 DF 00 00 */	sth r30, 0(r31)
lbl_800D2BC4:
/* 800D2BC4 000CFB24  7C 7E 1B 78 */	mr r30, r3
lbl_800D2BC8:
/* 800D2BC8 000CFB28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D2BCC 000CFB2C  7F C3 F3 78 */	mr r3, r30
/* 800D2BD0 000CFB30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D2BD4 000CFB34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D2BD8 000CFB38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D2BDC 000CFB3C  7C 08 03 A6 */	mtlr r0
/* 800D2BE0 000CFB40  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2BE4 000CFB44  4E 80 00 20 */	blr 

.global is_utf8_complete
is_utf8_complete:
/* 800D2BE8 000CFB48  28 04 00 00 */	cmplwi r4, 0
/* 800D2BEC 000CFB4C  40 82 00 0C */	bne lbl_800D2BF8
/* 800D2BF0 000CFB50  38 60 FF FF */	li r3, -1
/* 800D2BF4 000CFB54  4E 80 00 20 */	blr 
lbl_800D2BF8:
/* 800D2BF8 000CFB58  88 A3 00 00 */	lbz r5, 0(r3)
/* 800D2BFC 000CFB5C  7C A0 07 75 */	extsb. r0, r5
/* 800D2C00 000CFB60  40 82 00 0C */	bne lbl_800D2C0C
/* 800D2C04 000CFB64  38 60 00 00 */	li r3, 0
/* 800D2C08 000CFB68  4E 80 00 20 */	blr 
lbl_800D2C0C:
/* 800D2C0C 000CFB6C  7C A5 07 74 */	extsb r5, r5
/* 800D2C10 000CFB70  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 800D2C14 000CFB74  40 82 00 0C */	bne lbl_800D2C20
/* 800D2C18 000CFB78  38 60 00 01 */	li r3, 1
/* 800D2C1C 000CFB7C  4E 80 00 20 */	blr 
lbl_800D2C20:
/* 800D2C20 000CFB80  54 A0 06 34 */	rlwinm r0, r5, 0, 0x18, 0x1a
/* 800D2C24 000CFB84  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 800D2C28 000CFB88  40 82 00 30 */	bne lbl_800D2C58
/* 800D2C2C 000CFB8C  28 04 00 02 */	cmplwi r4, 2
/* 800D2C30 000CFB90  41 80 00 20 */	blt lbl_800D2C50
/* 800D2C34 000CFB94  88 03 00 01 */	lbz r0, 1(r3)
/* 800D2C38 000CFB98  38 60 FF FF */	li r3, -1
/* 800D2C3C 000CFB9C  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 800D2C40 000CFBA0  2C 00 00 80 */	cmpwi r0, 0x80
/* 800D2C44 000CFBA4  4C 82 00 20 */	bnelr 
/* 800D2C48 000CFBA8  38 60 00 02 */	li r3, 2
/* 800D2C4C 000CFBAC  4E 80 00 20 */	blr 
lbl_800D2C50:
/* 800D2C50 000CFBB0  38 60 FF FE */	li r3, -2
/* 800D2C54 000CFBB4  4E 80 00 20 */	blr 
lbl_800D2C58:
/* 800D2C58 000CFBB8  54 A0 06 36 */	rlwinm r0, r5, 0, 0x18, 0x1b
/* 800D2C5C 000CFBBC  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 800D2C60 000CFBC0  40 82 00 6C */	bne lbl_800D2CCC
/* 800D2C64 000CFBC4  28 04 00 03 */	cmplwi r4, 3
/* 800D2C68 000CFBC8  41 80 00 34 */	blt lbl_800D2C9C
/* 800D2C6C 000CFBCC  88 03 00 01 */	lbz r0, 1(r3)
/* 800D2C70 000CFBD0  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 800D2C74 000CFBD4  2C 00 00 80 */	cmpwi r0, 0x80
/* 800D2C78 000CFBD8  40 82 00 1C */	bne lbl_800D2C94
/* 800D2C7C 000CFBDC  88 03 00 02 */	lbz r0, 2(r3)
/* 800D2C80 000CFBE0  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 800D2C84 000CFBE4  2C 00 00 80 */	cmpwi r0, 0x80
/* 800D2C88 000CFBE8  40 82 00 0C */	bne lbl_800D2C94
/* 800D2C8C 000CFBEC  38 60 00 03 */	li r3, 3
/* 800D2C90 000CFBF0  4E 80 00 20 */	blr 
lbl_800D2C94:
/* 800D2C94 000CFBF4  38 60 FF FF */	li r3, -1
/* 800D2C98 000CFBF8  4E 80 00 20 */	blr 
lbl_800D2C9C:
/* 800D2C9C 000CFBFC  28 04 00 02 */	cmplwi r4, 2
/* 800D2CA0 000CFC00  40 82 00 14 */	bne lbl_800D2CB4
/* 800D2CA4 000CFC04  88 03 00 01 */	lbz r0, 1(r3)
/* 800D2CA8 000CFC08  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 800D2CAC 000CFC0C  2C 00 00 80 */	cmpwi r0, 0x80
/* 800D2CB0 000CFC10  41 82 00 0C */	beq lbl_800D2CBC
lbl_800D2CB4:
/* 800D2CB4 000CFC14  28 04 00 01 */	cmplwi r4, 1
/* 800D2CB8 000CFC18  40 82 00 0C */	bne lbl_800D2CC4
lbl_800D2CBC:
/* 800D2CBC 000CFC1C  38 60 FF FE */	li r3, -2
/* 800D2CC0 000CFC20  4E 80 00 20 */	blr 
lbl_800D2CC4:
/* 800D2CC4 000CFC24  38 60 FF FF */	li r3, -1
/* 800D2CC8 000CFC28  4E 80 00 20 */	blr 
lbl_800D2CCC:
/* 800D2CCC 000CFC2C  38 60 FF FF */	li r3, -1
/* 800D2CD0 000CFC30  4E 80 00 20 */	blr 

.section .sdata2 # 0x804D9020 - 0x804DA760
.balign 8
lbl_804DA188:
	# ROM: 0x17C148
	.4byte 0x0000C0E0