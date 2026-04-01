
release:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	push   0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 2f 00 00 	bnd jmp *0x2f8b(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 2f 00 00 	bnd jmp *0x2f8d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <clock_gettime@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 2f 00 00 	bnd jmp *0x2f45(%rip)        # 3fc0 <clock_gettime@GLIBC_2.17>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <__stack_chk_fail@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <__printf_chk@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmp *0x2f35(%rip)        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <main>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	41 54                	push   %r12
    10a6:	ba 26 00 00 00       	mov    $0x26,%edx
    10ab:	48 8d 35 e0 0f 00 00 	lea    0xfe0(%rip),%rsi        # 2092 <_IO_stdin_used+0x92>
    10b2:	bf 01 00 00 00       	mov    $0x1,%edi
    10b7:	55                   	push   %rbp
    10b8:	4c 8d 25 d8 0f 00 00 	lea    0xfd8(%rip),%r12        # 2097 <_IO_stdin_used+0x97>
    10bf:	48 81 ec a8 01 00 00 	sub    $0x1a8,%rsp
    10c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    10cd:	00 00 
    10cf:	48 89 84 24 98 01 00 	mov    %rax,0x198(%rsp)
    10d6:	00 
    10d7:	31 c0                	xor    %eax,%eax
    10d9:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    10de:	e8 ad ff ff ff       	call   1090 <__printf_chk@plt>
    10e3:	be 0a 00 00 00       	mov    $0xa,%esi
    10e8:	48 89 ef             	mov    %rbp,%rdi
    10eb:	e8 e0 02 00 00       	call   13d0 <initStudents>
    10f0:	8b 44 24 56          	mov    0x56(%rsp),%eax
    10f4:	f3 0f 6f 4c 24 36    	movdqu 0x36(%rsp),%xmm1
    10fa:	48 8d 35 4f 0f 00 00 	lea    0xf4f(%rip),%rsi        # 2050 <_IO_stdin_used+0x50>
    1101:	f3 0f 6f 54 24 46    	movdqu 0x46(%rsp),%xmm2
    1107:	bf 01 00 00 00       	mov    $0x1,%edi
    110c:	89 44 24 30          	mov    %eax,0x30(%rsp)
    1110:	0f b7 44 24 5a       	movzwl 0x5a(%rsp),%eax
    1115:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
    111a:	66 89 44 24 34       	mov    %ax,0x34(%rsp)
    111f:	31 c0                	xor    %eax,%eax
    1121:	0f 29 54 24 20       	movaps %xmm2,0x20(%rsp)
    1126:	e8 65 ff ff ff       	call   1090 <__printf_chk@plt>
    112b:	e8 90 01 00 00       	call   12c0 <now_ms>
    1130:	be 0a 00 00 00       	mov    $0xa,%esi
    1135:	48 89 ef             	mov    %rbp,%rdi
    1138:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    113e:	e8 0d 03 00 00       	call   1450 <computeAverageScore>
    1143:	e8 78 01 00 00       	call   12c0 <now_ms>
    1148:	f2 0f 5c 44 24 08    	subsd  0x8(%rsp),%xmm0
    114e:	4c 89 e6             	mov    %r12,%rsi
    1151:	bf 01 00 00 00       	mov    $0x1,%edi
    1156:	b8 01 00 00 00       	mov    $0x1,%eax
    115b:	e8 30 ff ff ff       	call   1090 <__printf_chk@plt>
    1160:	48 8d 35 09 0f 00 00 	lea    0xf09(%rip),%rsi        # 2070 <_IO_stdin_used+0x70>
    1167:	bf 01 00 00 00       	mov    $0x1,%edi
    116c:	31 c0                	xor    %eax,%eax
    116e:	e8 1d ff ff ff       	call   1090 <__printf_chk@plt>
    1173:	e8 48 01 00 00       	call   12c0 <now_ms>
    1178:	be 0a 00 00 00       	mov    $0xa,%esi
    117d:	48 89 ef             	mov    %rbp,%rdi
    1180:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1186:	e8 35 03 00 00       	call   14c0 <quickSortAverageScore>
    118b:	e8 30 01 00 00       	call   12c0 <now_ms>
    1190:	f2 0f 5c 44 24 08    	subsd  0x8(%rsp),%xmm0
    1196:	4c 89 e6             	mov    %r12,%rsi
    1199:	bf 01 00 00 00       	mov    $0x1,%edi
    119e:	b8 01 00 00 00       	mov    $0x1,%eax
    11a3:	e8 e8 fe ff ff       	call   1090 <__printf_chk@plt>
    11a8:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
    11af:	00 
    11b0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    11b7:	00 00 
    11b9:	75 0d                	jne    11c8 <main+0x128>
    11bb:	48 81 c4 a8 01 00 00 	add    $0x1a8,%rsp
    11c2:	31 c0                	xor    %eax,%eax
    11c4:	5d                   	pop    %rbp
    11c5:	41 5c                	pop    %r12
    11c7:	c3                   	ret    
    11c8:	e8 b3 fe ff ff       	call   1080 <__stack_chk_fail@plt>
    11cd:	0f 1f 00             	nopl   (%rax)

00000000000011d0 <_start>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	31 ed                	xor    %ebp,%ebp
    11d6:	49 89 d1             	mov    %rdx,%r9
    11d9:	5e                   	pop    %rsi
    11da:	48 89 e2             	mov    %rsp,%rdx
    11dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11e1:	50                   	push   %rax
    11e2:	54                   	push   %rsp
    11e3:	45 31 c0             	xor    %r8d,%r8d
    11e6:	31 c9                	xor    %ecx,%ecx
    11e8:	48 8d 3d b1 fe ff ff 	lea    -0x14f(%rip),%rdi        # 10a0 <main>
    11ef:	ff 15 e3 2d 00 00    	call   *0x2de3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    11f5:	f4                   	hlt    
    11f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11fd:	00 00 00 

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 09 2e 00 00 	lea    0x2e09(%rip),%rdi        # 4010 <__TMC_END__>
    1207:	48 8d 05 02 2e 00 00 	lea    0x2e02(%rip),%rax        # 4010 <__TMC_END__>
    120e:	48 39 f8             	cmp    %rdi,%rax
    1211:	74 15                	je     1228 <deregister_tm_clones+0x28>
    1213:	48 8b 05 c6 2d 00 00 	mov    0x2dc6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    121a:	48 85 c0             	test   %rax,%rax
    121d:	74 09                	je     1228 <deregister_tm_clones+0x28>
    121f:	ff e0                	jmp    *%rax
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <register_tm_clones>:
    1230:	48 8d 3d d9 2d 00 00 	lea    0x2dd9(%rip),%rdi        # 4010 <__TMC_END__>
    1237:	48 8d 35 d2 2d 00 00 	lea    0x2dd2(%rip),%rsi        # 4010 <__TMC_END__>
    123e:	48 29 fe             	sub    %rdi,%rsi
    1241:	48 89 f0             	mov    %rsi,%rax
    1244:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1248:	48 c1 f8 03          	sar    $0x3,%rax
    124c:	48 01 c6             	add    %rax,%rsi
    124f:	48 d1 fe             	sar    %rsi
    1252:	74 14                	je     1268 <register_tm_clones+0x38>
    1254:	48 8b 05 95 2d 00 00 	mov    0x2d95(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    125b:	48 85 c0             	test   %rax,%rax
    125e:	74 08                	je     1268 <register_tm_clones+0x38>
    1260:	ff e0                	jmp    *%rax
    1262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1268:	c3                   	ret    
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <__do_global_dtors_aux>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	80 3d 95 2d 00 00 00 	cmpb   $0x0,0x2d95(%rip)        # 4010 <__TMC_END__>
    127b:	75 2b                	jne    12a8 <__do_global_dtors_aux+0x38>
    127d:	55                   	push   %rbp
    127e:	48 83 3d 72 2d 00 00 	cmpq   $0x0,0x2d72(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1285:	00 
    1286:	48 89 e5             	mov    %rsp,%rbp
    1289:	74 0c                	je     1297 <__do_global_dtors_aux+0x27>
    128b:	48 8b 3d 76 2d 00 00 	mov    0x2d76(%rip),%rdi        # 4008 <__dso_handle>
    1292:	e8 c9 fd ff ff       	call   1060 <__cxa_finalize@plt>
    1297:	e8 64 ff ff ff       	call   1200 <deregister_tm_clones>
    129c:	c6 05 6d 2d 00 00 01 	movb   $0x1,0x2d6d(%rip)        # 4010 <__TMC_END__>
    12a3:	5d                   	pop    %rbp
    12a4:	c3                   	ret    
    12a5:	0f 1f 00             	nopl   (%rax)
    12a8:	c3                   	ret    
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <frame_dummy>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	e9 77 ff ff ff       	jmp    1230 <register_tm_clones>
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012c0 <now_ms>:
    12c0:	48 83 ec 28          	sub    $0x28,%rsp
    12c4:	bf 01 00 00 00       	mov    $0x1,%edi
    12c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12d0:	00 00 
    12d2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    12d7:	31 c0                	xor    %eax,%eax
    12d9:	48 89 e6             	mov    %rsp,%rsi
    12dc:	e8 8f fd ff ff       	call   1070 <clock_gettime@plt>
    12e1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    12e5:	66 0f ef c9          	pxor   %xmm1,%xmm1
    12e9:	f2 48 0f 2a 04 24    	cvtsi2sdq (%rsp),%xmm0
    12ef:	f2 0f 59 05 a9 0d 00 	mulsd  0xda9(%rip),%xmm0        # 20a0 <_IO_stdin_used+0xa0>
    12f6:	00 
    12f7:	f2 48 0f 2a 4c 24 08 	cvtsi2sdq 0x8(%rsp),%xmm1
    12fe:	f2 0f 5e 0d a2 0d 00 	divsd  0xda2(%rip),%xmm1        # 20a8 <_IO_stdin_used+0xa8>
    1305:	00 
    1306:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    130a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    130f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1316:	00 00 
    1318:	75 05                	jne    131f <now_ms+0x5f>
    131a:	48 83 c4 28          	add    $0x28,%rsp
    131e:	c3                   	ret    
    131f:	e8 5c fd ff ff       	call   1080 <__stack_chk_fail@plt>
    1324:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    132b:	00 00 00 00 
    132f:	90                   	nop

0000000000001330 <display>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	85 f6                	test   %esi,%esi
    1336:	0f 8e 84 00 00 00    	jle    13c0 <display+0x90>
    133c:	8d 46 ff             	lea    -0x1(%rsi),%eax
    133f:	41 54                	push   %r12
    1341:	48 8d 14 c0          	lea    (%rax,%rax,8),%rdx
    1345:	55                   	push   %rbp
    1346:	48 8d 2d bb 0c 00 00 	lea    0xcbb(%rip),%rbp        # 2008 <_IO_stdin_used+0x8>
    134d:	48 8d 04 50          	lea    (%rax,%rdx,2),%rax
    1351:	53                   	push   %rbx
    1352:	48 89 fb             	mov    %rdi,%rbx
    1355:	4c 8d 64 47 26       	lea    0x26(%rdi,%rax,2),%r12
    135a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1360:	0f bf 43 24          	movswl 0x24(%rbx),%eax
    1364:	48 83 ec 08          	sub    $0x8,%rsp
    1368:	44 0f bf 4b 16       	movswl 0x16(%rbx),%r9d
    136d:	48 89 da             	mov    %rbx,%rdx
    1370:	44 0f bf 43 14       	movswl 0x14(%rbx),%r8d
    1375:	48 8d 4b 08          	lea    0x8(%rbx),%rcx
    1379:	48 89 ee             	mov    %rbp,%rsi
    137c:	bf 01 00 00 00       	mov    $0x1,%edi
    1381:	50                   	push   %rax
    1382:	0f bf 43 22          	movswl 0x22(%rbx),%eax
    1386:	48 83 c3 26          	add    $0x26,%rbx
    138a:	50                   	push   %rax
    138b:	0f bf 43 fa          	movswl -0x6(%rbx),%eax
    138f:	50                   	push   %rax
    1390:	0f bf 43 f8          	movswl -0x8(%rbx),%eax
    1394:	50                   	push   %rax
    1395:	0f bf 43 f6          	movswl -0xa(%rbx),%eax
    1399:	50                   	push   %rax
    139a:	0f bf 43 f4          	movswl -0xc(%rbx),%eax
    139e:	50                   	push   %rax
    139f:	0f bf 43 f2          	movswl -0xe(%rbx),%eax
    13a3:	50                   	push   %rax
    13a4:	31 c0                	xor    %eax,%eax
    13a6:	e8 e5 fc ff ff       	call   1090 <__printf_chk@plt>
    13ab:	48 83 c4 40          	add    $0x40,%rsp
    13af:	49 39 dc             	cmp    %rbx,%r12
    13b2:	75 ac                	jne    1360 <display+0x30>
    13b4:	5b                   	pop    %rbx
    13b5:	5d                   	pop    %rbp
    13b6:	41 5c                	pop    %r12
    13b8:	c3                   	ret    
    13b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13c0:	c3                   	ret    
    13c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13c8:	00 00 00 00 
    13cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013d0 <initStudents>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	b8 37 32 00 00       	mov    $0x3237,%eax
    13d9:	be 64 00 00 00       	mov    $0x64,%esi
    13de:	c6 47 12 00          	movb   $0x0,0x12(%rdi)
    13e2:	48 ba 55 32 30 32 34 	movabs $0x3534313432303255,%rdx
    13e9:	31 34 35 
    13ec:	48 b9 55 32 30 32 33 	movabs $0x3035313332303255,%rcx
    13f3:	31 35 30 
    13f6:	66 89 47 10          	mov    %ax,0x10(%rdi)
    13fa:	48 b8 5f 00 51 00 52 	movabs $0x5300520051005f,%rax
    1401:	00 53 00 
    1404:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    1408:	31 d2                	xor    %edx,%edx
    140a:	48 89 47 14          	mov    %rax,0x14(%rdi)
    140e:	48 b8 54 00 55 00 56 	movabs $0x57005600550054,%rax
    1415:	00 57 00 
    1418:	48 89 4f 2e          	mov    %rcx,0x2e(%rdi)
    141c:	b9 30 32 00 00       	mov    $0x3230,%ecx
    1421:	c7 07 71 79 79 00    	movl   $0x797971,(%rdi)
    1427:	48 89 47 1c          	mov    %rax,0x1c(%rdi)
    142b:	66 89 57 24          	mov    %dx,0x24(%rdi)
    142f:	c7 47 26 77 61 6e 67 	movl   $0x676e6177,0x26(%rdi)
    1436:	c6 47 2a 00          	movb   $0x0,0x2a(%rdi)
    143a:	66 89 4f 36          	mov    %cx,0x36(%rdi)
    143e:	c6 47 38 00          	movb   $0x0,0x38(%rdi)
    1442:	66 89 77 3a          	mov    %si,0x3a(%rdi)
    1446:	c3                   	ret    
    1447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    144e:	00 00 

0000000000001450 <computeAverageScore>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	85 f6                	test   %esi,%esi
    1456:	7e 4f                	jle    14a7 <computeAverageScore+0x57>
    1458:	8d 46 ff             	lea    -0x1(%rsi),%eax
    145b:	4c 8d 47 24          	lea    0x24(%rdi),%r8
    145f:	48 8d 14 c0          	lea    (%rax,%rax,8),%rdx
    1463:	48 8d 04 50          	lea    (%rax,%rdx,2),%rax
    1467:	48 8d 74 47 4a       	lea    0x4a(%rdi,%rax,2),%rsi
    146c:	0f 1f 40 00          	nopl   0x0(%rax)
    1470:	49 8d 40 f0          	lea    -0x10(%r8),%rax
    1474:	31 d2                	xor    %edx,%edx
    1476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    147d:	00 00 00 
    1480:	0f bf 08             	movswl (%rax),%ecx
    1483:	48 83 c0 02          	add    $0x2,%rax
    1487:	01 ca                	add    %ecx,%edx
    1489:	4c 39 c0             	cmp    %r8,%rax
    148c:	75 f2                	jne    1480 <computeAverageScore+0x30>
    148e:	85 d2                	test   %edx,%edx
    1490:	8d 42 07             	lea    0x7(%rdx),%eax
    1493:	0f 49 c2             	cmovns %edx,%eax
    1496:	49 83 c0 26          	add    $0x26,%r8
    149a:	c1 f8 03             	sar    $0x3,%eax
    149d:	66 41 89 40 da       	mov    %ax,-0x26(%r8)
    14a2:	49 39 f0             	cmp    %rsi,%r8
    14a5:	75 c9                	jne    1470 <computeAverageScore+0x20>
    14a7:	c3                   	ret    
    14a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14af:	00 

00000000000014b0 <computeAverageScoreAsm>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	c3                   	ret    
    14b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14bc:	00 00 00 00 

00000000000014c0 <quickSortAverageScore>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	41 54                	push   %r12
    14c6:	55                   	push   %rbp
    14c7:	53                   	push   %rbx
    14c8:	48 83 ec 60          	sub    $0x60,%rsp
    14cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14d3:	00 00 
    14d5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    14da:	31 c0                	xor    %eax,%eax
    14dc:	83 fe 01             	cmp    $0x1,%esi
    14df:	0f 8e ab 01 00 00    	jle    1690 <quickSortAverageScore+0x1d0>
    14e5:	48 89 fb             	mov    %rdi,%rbx
    14e8:	41 89 f0             	mov    %esi,%r8d
    14eb:	8b 43 20             	mov    0x20(%rbx),%eax
    14ee:	41 8d 68 ff          	lea    -0x1(%r8),%ebp
    14f2:	0f b7 7b 24          	movzwl 0x24(%rbx),%edi
    14f6:	4c 63 cd             	movslq %ebp,%r9
    14f9:	f3 0f 6f 23          	movdqu (%rbx),%xmm4
    14fd:	f3 0f 6f 6b 10       	movdqu 0x10(%rbx),%xmm5
    1502:	89 ee                	mov    %ebp,%esi
    1504:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1508:	4b 8d 04 c9          	lea    (%r9,%r9,8),%rax
    150c:	66 89 7c 24 24       	mov    %di,0x24(%rsp)
    1511:	49 8d 04 41          	lea    (%r9,%rax,2),%rax
    1515:	0f b7 4c 43 24       	movzwl 0x24(%rbx,%rax,2),%ecx
    151a:	0f 29 24 24          	movaps %xmm4,(%rsp)
    151e:	b8 01 00 00 00       	mov    $0x1,%eax
    1523:	0f 29 6c 24 10       	movaps %xmm5,0x10(%rsp)
    1528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    152f:	00 
    1530:	41 39 c0             	cmp    %eax,%r8d
    1533:	7e 2d                	jle    1562 <quickSortAverageScore+0xa2>
    1535:	48 63 d0             	movslq %eax,%rdx
    1538:	4c 8d 14 d2          	lea    (%rdx,%rdx,8),%r10
    153c:	4a 8d 14 52          	lea    (%rdx,%r10,2),%rdx
    1540:	48 8d 14 53          	lea    (%rbx,%rdx,2),%rdx
    1544:	eb 16                	jmp    155c <quickSortAverageScore+0x9c>
    1546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    154d:	00 00 00 
    1550:	83 c0 01             	add    $0x1,%eax
    1553:	48 83 c2 26          	add    $0x26,%rdx
    1557:	41 39 c0             	cmp    %eax,%r8d
    155a:	74 06                	je     1562 <quickSortAverageScore+0xa2>
    155c:	66 39 7a 24          	cmp    %di,0x24(%rdx)
    1560:	7d ee                	jge    1550 <quickSortAverageScore+0x90>
    1562:	4b 8d 14 c9          	lea    (%r9,%r9,8),%rdx
    1566:	49 8d 14 51          	lea    (%r9,%rdx,2),%rdx
    156a:	48 8d 14 53          	lea    (%rbx,%rdx,2),%rdx
    156e:	eb 04                	jmp    1574 <quickSortAverageScore+0xb4>
    1570:	0f b7 4a 24          	movzwl 0x24(%rdx),%ecx
    1574:	66 39 cf             	cmp    %cx,%di
    1577:	7e 77                	jle    15f0 <quickSortAverageScore+0x130>
    1579:	48 83 ea 26          	sub    $0x26,%rdx
    157d:	83 ee 01             	sub    $0x1,%esi
    1580:	75 ee                	jne    1570 <quickSortAverageScore+0xb0>
    1582:	48 89 da             	mov    %rbx,%rdx
    1585:	41 bc 26 00 00 00    	mov    $0x26,%r12d
    158b:	f3 0f 6f 32          	movdqu (%rdx),%xmm6
    158f:	66 0f 6f 24 24       	movdqa (%rsp),%xmm4
    1594:	48 89 df             	mov    %rbx,%rdi
    1597:	66 0f 6f 6c 24 10    	movdqa 0x10(%rsp),%xmm5
    159d:	0f 11 33             	movups %xmm6,(%rbx)
    15a0:	f3 0f 6f 7a 10       	movdqu 0x10(%rdx),%xmm7
    15a5:	0f 11 7b 10          	movups %xmm7,0x10(%rbx)
    15a9:	8b 42 20             	mov    0x20(%rdx),%eax
    15ac:	89 43 20             	mov    %eax,0x20(%rbx)
    15af:	0f b7 42 24          	movzwl 0x24(%rdx),%eax
    15b3:	66 89 43 24          	mov    %ax,0x24(%rbx)
    15b7:	8b 44 24 20          	mov    0x20(%rsp),%eax
    15bb:	4c 01 e3             	add    %r12,%rbx
    15be:	0f 11 22             	movups %xmm4,(%rdx)
    15c1:	89 42 20             	mov    %eax,0x20(%rdx)
    15c4:	0f b7 44 24 24       	movzwl 0x24(%rsp),%eax
    15c9:	0f 11 6a 10          	movups %xmm5,0x10(%rdx)
    15cd:	66 89 42 24          	mov    %ax,0x24(%rdx)
    15d1:	e8 ea fe ff ff       	call   14c0 <quickSortAverageScore>
    15d6:	83 fd 01             	cmp    $0x1,%ebp
    15d9:	0f 8e b1 00 00 00    	jle    1690 <quickSortAverageScore+0x1d0>
    15df:	41 89 e8             	mov    %ebp,%r8d
    15e2:	e9 04 ff ff ff       	jmp    14eb <quickSortAverageScore+0x2b>
    15e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    15ee:	00 00 
    15f0:	4c 63 ce             	movslq %esi,%r9
    15f3:	4b 8d 14 c9          	lea    (%r9,%r9,8),%rdx
    15f7:	4d 8d 14 51          	lea    (%r9,%rdx,2),%r10
    15fb:	4d 01 d2             	add    %r10,%r10
    15fe:	4a 8d 14 13          	lea    (%rbx,%r10,1),%rdx
    1602:	39 f0                	cmp    %esi,%eax
    1604:	7d 6f                	jge    1675 <quickSortAverageScore+0x1b5>
    1606:	48 63 c8             	movslq %eax,%rcx
    1609:	f3 0f 6f 12          	movdqu (%rdx),%xmm2
    160d:	4c 8d 14 c9          	lea    (%rcx,%rcx,8),%r10
    1611:	4a 8d 0c 51          	lea    (%rcx,%r10,2),%rcx
    1615:	4c 8d 14 4b          	lea    (%rbx,%rcx,2),%r10
    1619:	f3 41 0f 6f 0a       	movdqu (%r10),%xmm1
    161e:	41 0f 11 12          	movups %xmm2,(%r10)
    1622:	f3 0f 6f 5a 10       	movdqu 0x10(%rdx),%xmm3
    1627:	f3 41 0f 6f 42 10    	movdqu 0x10(%r10),%xmm0
    162d:	45 8b 5a 20          	mov    0x20(%r10),%r11d
    1631:	41 0f 11 5a 10       	movups %xmm3,0x10(%r10)
    1636:	44 8b 62 20          	mov    0x20(%rdx),%r12d
    163a:	41 0f b7 4a 24       	movzwl 0x24(%r10),%ecx
    163f:	44 89 5c 24 50       	mov    %r11d,0x50(%rsp)
    1644:	45 89 62 20          	mov    %r12d,0x20(%r10)
    1648:	44 0f b7 62 24       	movzwl 0x24(%rdx),%r12d
    164d:	66 89 4c 24 54       	mov    %cx,0x54(%rsp)
    1652:	66 45 89 62 24       	mov    %r12w,0x24(%r10)
    1657:	0f 29 4c 24 30       	movaps %xmm1,0x30(%rsp)
    165c:	44 89 5a 20          	mov    %r11d,0x20(%rdx)
    1660:	66 89 4a 24          	mov    %cx,0x24(%rdx)
    1664:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
    1669:	0f 11 0a             	movups %xmm1,(%rdx)
    166c:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
    1670:	e9 bb fe ff ff       	jmp    1530 <quickSortAverageScore+0x70>
    1675:	0f 84 b5 fe ff ff    	je     1530 <quickSortAverageScore+0x70>
    167b:	41 29 f0             	sub    %esi,%r8d
    167e:	4d 8d 62 26          	lea    0x26(%r10),%r12
    1682:	41 8d 68 ff          	lea    -0x1(%r8),%ebp
    1686:	e9 00 ff ff ff       	jmp    158b <quickSortAverageScore+0xcb>
    168b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1690:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1695:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    169c:	00 00 
    169e:	75 09                	jne    16a9 <quickSortAverageScore+0x1e9>
    16a0:	48 83 c4 60          	add    $0x60,%rsp
    16a4:	5b                   	pop    %rbx
    16a5:	5d                   	pop    %rbp
    16a6:	41 5c                	pop    %r12
    16a8:	c3                   	ret    
    16a9:	e8 d2 f9 ff ff       	call   1080 <__stack_chk_fail@plt>

Disassembly of section .fini:

00000000000016b0 <_fini>:
    16b0:	f3 0f 1e fa          	endbr64 
    16b4:	48 83 ec 08          	sub    $0x8,%rsp
    16b8:	48 83 c4 08          	add    $0x8,%rsp
    16bc:	c3                   	ret    
