
debug:     file format elf64-x86-64


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

0000000000001090 <printf@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmp *0x2f35(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d e1 08 00 00 	lea    0x8e1(%rip),%rdi        # 19a0 <main>
    10bf:	ff 15 13 2f 00 00    	call   *0x2f13(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt    
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	48 8d 05 32 2f 00 00 	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 f6 2e 00 00 	mov    0x2ef6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 2f 00 00 	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	48 8d 35 02 2f 00 00 	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 2e 00 00 	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	call   1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	call   10d0 <deregister_tm_clones>
    116c:	c6 05 9d 2e 00 00 01 	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	ret    
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmp    1100 <register_tm_clones>

0000000000001189 <now_ms>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	55                   	push   %rbp
    118e:	48 89 e5             	mov    %rsp,%rbp
    1191:	48 83 ec 20          	sub    $0x20,%rsp
    1195:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    119c:	00 00 
    119e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11a2:	31 c0                	xor    %eax,%eax
    11a4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    11a8:	48 89 c6             	mov    %rax,%rsi
    11ab:	bf 01 00 00 00       	mov    $0x1,%edi
    11b0:	e8 bb fe ff ff       	call   1070 <clock_gettime@plt>
    11b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11b9:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11bd:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
    11c2:	f2 0f 10 05 e6 0e 00 	movsd  0xee6(%rip),%xmm0        # 20b0 <_IO_stdin_used+0xb0>
    11c9:	00 
    11ca:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    11ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11d2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11d6:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    11db:	f2 0f 10 15 d5 0e 00 	movsd  0xed5(%rip),%xmm2        # 20b8 <_IO_stdin_used+0xb8>
    11e2:	00 
    11e3:	f2 0f 5e c2          	divsd  %xmm2,%xmm0
    11e7:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    11eb:	66 48 0f 7e c0       	movq   %xmm0,%rax
    11f0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11f4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    11fb:	00 00 
    11fd:	74 05                	je     1204 <now_ms+0x7b>
    11ff:	e8 7c fe ff ff       	call   1080 <__stack_chk_fail@plt>
    1204:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1209:	c9                   	leave  
    120a:	c3                   	ret    

000000000000120b <tick_ms>:
    120b:	f3 0f 1e fa          	endbr64 
    120f:	55                   	push   %rbp
    1210:	48 89 e5             	mov    %rsp,%rbp
    1213:	48 83 ec 20          	sub    $0x20,%rsp
    1217:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    121e:	00 00 
    1220:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1224:	31 c0                	xor    %eax,%eax
    1226:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    122a:	48 89 c6             	mov    %rax,%rsi
    122d:	bf 01 00 00 00       	mov    $0x1,%edi
    1232:	e8 39 fe ff ff       	call   1070 <clock_gettime@plt>
    1237:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    123b:	69 c8 e8 03 00 00    	imul   $0x3e8,%eax,%ecx
    1241:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1245:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    124c:	de 1b 43 
    124f:	48 f7 e2             	mul    %rdx
    1252:	48 89 d0             	mov    %rdx,%rax
    1255:	48 c1 e8 12          	shr    $0x12,%rax
    1259:	01 c8                	add    %ecx,%eax
    125b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    125f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1266:	00 00 
    1268:	74 05                	je     126f <tick_ms+0x64>
    126a:	e8 11 fe ff ff       	call   1080 <__stack_chk_fail@plt>
    126f:	c9                   	leave  
    1270:	c3                   	ret    

0000000000001271 <display>:
    1271:	f3 0f 1e fa          	endbr64 
    1275:	55                   	push   %rbp
    1276:	48 89 e5             	mov    %rsp,%rbp
    1279:	41 55                	push   %r13
    127b:	41 54                	push   %r12
    127d:	53                   	push   %rbx
    127e:	48 83 ec 28          	sub    $0x28,%rsp
    1282:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1286:	89 75 c4             	mov    %esi,-0x3c(%rbp)
    1289:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1290:	e9 fc 01 00 00       	jmp    1491 <display+0x220>
    1295:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1298:	48 63 d0             	movslq %eax,%rdx
    129b:	48 89 d0             	mov    %rdx,%rax
    129e:	48 c1 e0 03          	shl    $0x3,%rax
    12a2:	48 01 d0             	add    %rdx,%rax
    12a5:	48 01 c0             	add    %rax,%rax
    12a8:	48 01 d0             	add    %rdx,%rax
    12ab:	48 01 c0             	add    %rax,%rax
    12ae:	48 89 c2             	mov    %rax,%rdx
    12b1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    12b5:	48 01 d0             	add    %rdx,%rax
    12b8:	0f b7 40 24          	movzwl 0x24(%rax),%eax
    12bc:	0f bf d8             	movswl %ax,%ebx
    12bf:	8b 45 dc             	mov    -0x24(%rbp),%eax
    12c2:	48 63 d0             	movslq %eax,%rdx
    12c5:	48 89 d0             	mov    %rdx,%rax
    12c8:	48 c1 e0 03          	shl    $0x3,%rax
    12cc:	48 01 d0             	add    %rdx,%rax
    12cf:	48 01 c0             	add    %rax,%rax
    12d2:	48 01 d0             	add    %rdx,%rax
    12d5:	48 01 c0             	add    %rax,%rax
    12d8:	48 89 c2             	mov    %rax,%rdx
    12db:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    12df:	48 01 d0             	add    %rdx,%rax
    12e2:	0f b7 40 22          	movzwl 0x22(%rax),%eax
    12e6:	44 0f bf d8          	movswl %ax,%r11d
    12ea:	8b 45 dc             	mov    -0x24(%rbp),%eax
    12ed:	48 63 d0             	movslq %eax,%rdx
    12f0:	48 89 d0             	mov    %rdx,%rax
    12f3:	48 c1 e0 03          	shl    $0x3,%rax
    12f7:	48 01 d0             	add    %rdx,%rax
    12fa:	48 01 c0             	add    %rax,%rax
    12fd:	48 01 d0             	add    %rdx,%rax
    1300:	48 01 c0             	add    %rax,%rax
    1303:	48 89 c2             	mov    %rax,%rdx
    1306:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    130a:	48 01 d0             	add    %rdx,%rax
    130d:	0f b7 40 20          	movzwl 0x20(%rax),%eax
    1311:	44 0f bf d0          	movswl %ax,%r10d
    1315:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1318:	48 63 d0             	movslq %eax,%rdx
    131b:	48 89 d0             	mov    %rdx,%rax
    131e:	48 c1 e0 03          	shl    $0x3,%rax
    1322:	48 01 d0             	add    %rdx,%rax
    1325:	48 01 c0             	add    %rax,%rax
    1328:	48 01 d0             	add    %rdx,%rax
    132b:	48 01 c0             	add    %rax,%rax
    132e:	48 89 c2             	mov    %rax,%rdx
    1331:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1335:	48 01 d0             	add    %rdx,%rax
    1338:	0f b7 40 1e          	movzwl 0x1e(%rax),%eax
    133c:	44 0f bf c8          	movswl %ax,%r9d
    1340:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1343:	48 63 d0             	movslq %eax,%rdx
    1346:	48 89 d0             	mov    %rdx,%rax
    1349:	48 c1 e0 03          	shl    $0x3,%rax
    134d:	48 01 d0             	add    %rdx,%rax
    1350:	48 01 c0             	add    %rax,%rax
    1353:	48 01 d0             	add    %rdx,%rax
    1356:	48 01 c0             	add    %rax,%rax
    1359:	48 89 c2             	mov    %rax,%rdx
    135c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1360:	48 01 d0             	add    %rdx,%rax
    1363:	0f b7 40 1c          	movzwl 0x1c(%rax),%eax
    1367:	44 0f bf c0          	movswl %ax,%r8d
    136b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    136e:	48 63 d0             	movslq %eax,%rdx
    1371:	48 89 d0             	mov    %rdx,%rax
    1374:	48 c1 e0 03          	shl    $0x3,%rax
    1378:	48 01 d0             	add    %rdx,%rax
    137b:	48 01 c0             	add    %rax,%rax
    137e:	48 01 d0             	add    %rdx,%rax
    1381:	48 01 c0             	add    %rax,%rax
    1384:	48 89 c2             	mov    %rax,%rdx
    1387:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    138b:	48 01 d0             	add    %rdx,%rax
    138e:	0f b7 40 1a          	movzwl 0x1a(%rax),%eax
    1392:	0f bf f8             	movswl %ax,%edi
    1395:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1398:	48 63 d0             	movslq %eax,%rdx
    139b:	48 89 d0             	mov    %rdx,%rax
    139e:	48 c1 e0 03          	shl    $0x3,%rax
    13a2:	48 01 d0             	add    %rdx,%rax
    13a5:	48 01 c0             	add    %rax,%rax
    13a8:	48 01 d0             	add    %rdx,%rax
    13ab:	48 01 c0             	add    %rax,%rax
    13ae:	48 89 c2             	mov    %rax,%rdx
    13b1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    13b5:	48 01 d0             	add    %rdx,%rax
    13b8:	0f b7 40 18          	movzwl 0x18(%rax),%eax
    13bc:	44 0f bf e8          	movswl %ax,%r13d
    13c0:	8b 45 dc             	mov    -0x24(%rbp),%eax
    13c3:	48 63 d0             	movslq %eax,%rdx
    13c6:	48 89 d0             	mov    %rdx,%rax
    13c9:	48 c1 e0 03          	shl    $0x3,%rax
    13cd:	48 01 d0             	add    %rdx,%rax
    13d0:	48 01 c0             	add    %rax,%rax
    13d3:	48 01 d0             	add    %rdx,%rax
    13d6:	48 01 c0             	add    %rax,%rax
    13d9:	48 89 c2             	mov    %rax,%rdx
    13dc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    13e0:	48 01 d0             	add    %rdx,%rax
    13e3:	0f b7 40 16          	movzwl 0x16(%rax),%eax
    13e7:	44 0f bf e0          	movswl %ax,%r12d
    13eb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    13ee:	48 63 d0             	movslq %eax,%rdx
    13f1:	48 89 d0             	mov    %rdx,%rax
    13f4:	48 c1 e0 03          	shl    $0x3,%rax
    13f8:	48 01 d0             	add    %rdx,%rax
    13fb:	48 01 c0             	add    %rax,%rax
    13fe:	48 01 d0             	add    %rdx,%rax
    1401:	48 01 c0             	add    %rax,%rax
    1404:	48 89 c2             	mov    %rax,%rdx
    1407:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    140b:	48 01 d0             	add    %rdx,%rax
    140e:	0f b7 40 14          	movzwl 0x14(%rax),%eax
    1412:	0f bf c8             	movswl %ax,%ecx
    1415:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1418:	48 63 d0             	movslq %eax,%rdx
    141b:	48 89 d0             	mov    %rdx,%rax
    141e:	48 c1 e0 03          	shl    $0x3,%rax
    1422:	48 01 d0             	add    %rdx,%rax
    1425:	48 01 c0             	add    %rax,%rax
    1428:	48 01 d0             	add    %rdx,%rax
    142b:	48 01 c0             	add    %rax,%rax
    142e:	48 89 c2             	mov    %rax,%rdx
    1431:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1435:	48 01 d0             	add    %rdx,%rax
    1438:	48 8d 70 08          	lea    0x8(%rax),%rsi
    143c:	8b 45 dc             	mov    -0x24(%rbp),%eax
    143f:	48 63 d0             	movslq %eax,%rdx
    1442:	48 89 d0             	mov    %rdx,%rax
    1445:	48 c1 e0 03          	shl    $0x3,%rax
    1449:	48 01 d0             	add    %rdx,%rax
    144c:	48 01 c0             	add    %rax,%rax
    144f:	48 01 d0             	add    %rdx,%rax
    1452:	48 01 c0             	add    %rax,%rax
    1455:	48 89 c2             	mov    %rax,%rdx
    1458:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    145c:	48 01 d0             	add    %rdx,%rax
    145f:	53                   	push   %rbx
    1460:	41 53                	push   %r11
    1462:	41 52                	push   %r10
    1464:	41 51                	push   %r9
    1466:	41 50                	push   %r8
    1468:	57                   	push   %rdi
    1469:	45 89 e9             	mov    %r13d,%r9d
    146c:	45 89 e0             	mov    %r12d,%r8d
    146f:	48 89 f2             	mov    %rsi,%rdx
    1472:	48 89 c6             	mov    %rax,%rsi
    1475:	48 8d 05 8c 0b 00 00 	lea    0xb8c(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    147c:	48 89 c7             	mov    %rax,%rdi
    147f:	b8 00 00 00 00       	mov    $0x0,%eax
    1484:	e8 07 fc ff ff       	call   1090 <printf@plt>
    1489:	48 83 c4 30          	add    $0x30,%rsp
    148d:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1491:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1494:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    1497:	0f 8c f8 fd ff ff    	jl     1295 <display+0x24>
    149d:	90                   	nop
    149e:	90                   	nop
    149f:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
    14a3:	5b                   	pop    %rbx
    14a4:	41 5c                	pop    %r12
    14a6:	41 5d                	pop    %r13
    14a8:	5d                   	pop    %rbp
    14a9:	c3                   	ret    

00000000000014aa <initStudents>:
    14aa:	f3 0f 1e fa          	endbr64 
    14ae:	55                   	push   %rbp
    14af:	48 89 e5             	mov    %rsp,%rbp
    14b2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14b6:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    14b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14bd:	c7 00 71 79 79 00    	movl   $0x797971,(%rax)
    14c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14c7:	48 83 c0 08          	add    $0x8,%rax
    14cb:	48 be 55 32 30 32 34 	movabs $0x3534313432303255,%rsi
    14d2:	31 34 35 
    14d5:	48 89 30             	mov    %rsi,(%rax)
    14d8:	66 c7 40 08 37 32    	movw   $0x3237,0x8(%rax)
    14de:	c6 40 0a 00          	movb   $0x0,0xa(%rax)
    14e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14e6:	66 c7 40 14 5f 00    	movw   $0x5f,0x14(%rax)
    14ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14f0:	66 c7 40 16 55 00    	movw   $0x55,0x16(%rax)
    14f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14fa:	66 c7 40 18 5a 00    	movw   $0x5a,0x18(%rax)
    1500:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1507:	eb 1f                	jmp    1528 <initStudents+0x7e>
    1509:	8b 45 fc             	mov    -0x4(%rbp),%eax
    150c:	83 c0 50             	add    $0x50,%eax
    150f:	89 c1                	mov    %eax,%ecx
    1511:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1515:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1518:	48 63 d2             	movslq %edx,%rdx
    151b:	48 83 c2 08          	add    $0x8,%rdx
    151f:	66 89 4c 50 04       	mov    %cx,0x4(%rax,%rdx,2)
    1524:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1528:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
    152c:	7e db                	jle    1509 <initStudents+0x5f>
    152e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1532:	66 c7 40 24 00 00    	movw   $0x0,0x24(%rax)
    1538:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    153c:	48 83 c0 26          	add    $0x26,%rax
    1540:	c7 00 77 61 6e 67    	movl   $0x676e6177,(%rax)
    1546:	c6 40 04 00          	movb   $0x0,0x4(%rax)
    154a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    154e:	48 83 c0 26          	add    $0x26,%rax
    1552:	48 83 c0 08          	add    $0x8,%rax
    1556:	48 bf 55 32 30 32 33 	movabs $0x3035313332303255,%rdi
    155d:	31 35 30 
    1560:	48 89 38             	mov    %rdi,(%rax)
    1563:	66 c7 40 08 30 32    	movw   $0x3230,0x8(%rax)
    1569:	c6 40 0a 00          	movb   $0x0,0xa(%rax)
    156d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1571:	48 83 c0 26          	add    $0x26,%rax
    1575:	66 c7 40 14 64 00    	movw   $0x64,0x14(%rax)
    157b:	90                   	nop
    157c:	5d                   	pop    %rbp
    157d:	c3                   	ret    

000000000000157e <computeAverageScore>:
    157e:	f3 0f 1e fa          	endbr64 
    1582:	55                   	push   %rbp
    1583:	48 89 e5             	mov    %rsp,%rbp
    1586:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    158a:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    158d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1594:	e9 8d 00 00 00       	jmp    1626 <computeAverageScore+0xa8>
    1599:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    15a0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    15a7:	eb 3a                	jmp    15e3 <computeAverageScore+0x65>
    15a9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    15ac:	48 63 d0             	movslq %eax,%rdx
    15af:	48 89 d0             	mov    %rdx,%rax
    15b2:	48 c1 e0 03          	shl    $0x3,%rax
    15b6:	48 01 d0             	add    %rdx,%rax
    15b9:	48 01 c0             	add    %rax,%rax
    15bc:	48 01 d0             	add    %rdx,%rax
    15bf:	48 01 c0             	add    %rax,%rax
    15c2:	48 89 c2             	mov    %rax,%rdx
    15c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15c9:	48 01 d0             	add    %rdx,%rax
    15cc:	8b 55 fc             	mov    -0x4(%rbp),%edx
    15cf:	48 63 d2             	movslq %edx,%rdx
    15d2:	48 83 c2 08          	add    $0x8,%rdx
    15d6:	0f b7 44 50 04       	movzwl 0x4(%rax,%rdx,2),%eax
    15db:	98                   	cwtl   
    15dc:	01 45 f8             	add    %eax,-0x8(%rbp)
    15df:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    15e3:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
    15e7:	7e c0                	jle    15a9 <computeAverageScore+0x2b>
    15e9:	8b 45 f8             	mov    -0x8(%rbp),%eax
    15ec:	8d 50 07             	lea    0x7(%rax),%edx
    15ef:	85 c0                	test   %eax,%eax
    15f1:	0f 48 c2             	cmovs  %edx,%eax
    15f4:	c1 f8 03             	sar    $0x3,%eax
    15f7:	89 c1                	mov    %eax,%ecx
    15f9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    15fc:	48 63 d0             	movslq %eax,%rdx
    15ff:	48 89 d0             	mov    %rdx,%rax
    1602:	48 c1 e0 03          	shl    $0x3,%rax
    1606:	48 01 d0             	add    %rdx,%rax
    1609:	48 01 c0             	add    %rax,%rax
    160c:	48 01 d0             	add    %rdx,%rax
    160f:	48 01 c0             	add    %rax,%rax
    1612:	48 89 c2             	mov    %rax,%rdx
    1615:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1619:	48 01 d0             	add    %rdx,%rax
    161c:	89 ca                	mov    %ecx,%edx
    161e:	66 89 50 24          	mov    %dx,0x24(%rax)
    1622:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1626:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1629:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    162c:	0f 8c 67 ff ff ff    	jl     1599 <computeAverageScore+0x1b>
    1632:	90                   	nop
    1633:	90                   	nop
    1634:	5d                   	pop    %rbp
    1635:	c3                   	ret    

0000000000001636 <computeAverageScoreAsm>:
    1636:	f3 0f 1e fa          	endbr64 
    163a:	55                   	push   %rbp
    163b:	48 89 e5             	mov    %rsp,%rbp
    163e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1642:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1645:	90                   	nop
    1646:	5d                   	pop    %rbp
    1647:	c3                   	ret    

0000000000001648 <quickSortAverageScore>:
    1648:	f3 0f 1e fa          	endbr64 
    164c:	55                   	push   %rbp
    164d:	48 89 e5             	mov    %rsp,%rbp
    1650:	53                   	push   %rbx
    1651:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    1658:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    165f:	89 b5 74 ff ff ff    	mov    %esi,-0x8c(%rbp)
    1665:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    166c:	00 00 
    166e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1672:	31 c0                	xor    %eax,%eax
    1674:	83 bd 74 ff ff ff 01 	cmpl   $0x1,-0x8c(%rbp)
    167b:	0f 8e 04 03 00 00    	jle    1985 <quickSortAverageScore+0x33d>
    1681:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1688:	48 8b 08             	mov    (%rax),%rcx
    168b:	48 8b 58 08          	mov    0x8(%rax),%rbx
    168f:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    1693:	48 89 5d 98          	mov    %rbx,-0x68(%rbp)
    1697:	48 8b 48 10          	mov    0x10(%rax),%rcx
    169b:	48 8b 58 18          	mov    0x18(%rax),%rbx
    169f:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    16a3:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
    16a7:	8b 50 20             	mov    0x20(%rax),%edx
    16aa:	89 55 b0             	mov    %edx,-0x50(%rbp)
    16ad:	0f b7 40 24          	movzwl 0x24(%rax),%eax
    16b1:	66 89 45 b4          	mov    %ax,-0x4c(%rbp)
    16b5:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
    16bc:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
    16c2:	83 e8 01             	sub    $0x1,%eax
    16c5:	89 45 8c             	mov    %eax,-0x74(%rbp)
    16c8:	e9 ab 01 00 00       	jmp    1878 <quickSortAverageScore+0x230>
    16cd:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    16d1:	8b 45 88             	mov    -0x78(%rbp),%eax
    16d4:	3b 85 74 ff ff ff    	cmp    -0x8c(%rbp),%eax
    16da:	7d 39                	jge    1715 <quickSortAverageScore+0xcd>
    16dc:	8b 45 88             	mov    -0x78(%rbp),%eax
    16df:	48 63 d0             	movslq %eax,%rdx
    16e2:	48 89 d0             	mov    %rdx,%rax
    16e5:	48 c1 e0 03          	shl    $0x3,%rax
    16e9:	48 01 d0             	add    %rdx,%rax
    16ec:	48 01 c0             	add    %rax,%rax
    16ef:	48 01 d0             	add    %rdx,%rax
    16f2:	48 01 c0             	add    %rax,%rax
    16f5:	48 89 c2             	mov    %rax,%rdx
    16f8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    16ff:	48 01 d0             	add    %rdx,%rax
    1702:	0f b7 50 24          	movzwl 0x24(%rax),%edx
    1706:	0f b7 45 b4          	movzwl -0x4c(%rbp),%eax
    170a:	66 39 c2             	cmp    %ax,%dx
    170d:	7d be                	jge    16cd <quickSortAverageScore+0x85>
    170f:	eb 04                	jmp    1715 <quickSortAverageScore+0xcd>
    1711:	83 6d 8c 01          	subl   $0x1,-0x74(%rbp)
    1715:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
    1719:	7e 33                	jle    174e <quickSortAverageScore+0x106>
    171b:	8b 45 8c             	mov    -0x74(%rbp),%eax
    171e:	48 63 d0             	movslq %eax,%rdx
    1721:	48 89 d0             	mov    %rdx,%rax
    1724:	48 c1 e0 03          	shl    $0x3,%rax
    1728:	48 01 d0             	add    %rdx,%rax
    172b:	48 01 c0             	add    %rax,%rax
    172e:	48 01 d0             	add    %rdx,%rax
    1731:	48 01 c0             	add    %rax,%rax
    1734:	48 89 c2             	mov    %rax,%rdx
    1737:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    173e:	48 01 d0             	add    %rdx,%rax
    1741:	0f b7 50 24          	movzwl 0x24(%rax),%edx
    1745:	0f b7 45 b4          	movzwl -0x4c(%rbp),%eax
    1749:	66 39 c2             	cmp    %ax,%dx
    174c:	7c c3                	jl     1711 <quickSortAverageScore+0xc9>
    174e:	8b 45 88             	mov    -0x78(%rbp),%eax
    1751:	3b 45 8c             	cmp    -0x74(%rbp),%eax
    1754:	0f 8d 1e 01 00 00    	jge    1878 <quickSortAverageScore+0x230>
    175a:	8b 45 88             	mov    -0x78(%rbp),%eax
    175d:	48 63 d0             	movslq %eax,%rdx
    1760:	48 89 d0             	mov    %rdx,%rax
    1763:	48 c1 e0 03          	shl    $0x3,%rax
    1767:	48 01 d0             	add    %rdx,%rax
    176a:	48 01 c0             	add    %rax,%rax
    176d:	48 01 d0             	add    %rdx,%rax
    1770:	48 01 c0             	add    %rax,%rax
    1773:	48 89 c2             	mov    %rax,%rdx
    1776:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    177d:	48 01 d0             	add    %rdx,%rax
    1780:	48 8b 08             	mov    (%rax),%rcx
    1783:	48 8b 58 08          	mov    0x8(%rax),%rbx
    1787:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    178b:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
    178f:	48 8b 48 10          	mov    0x10(%rax),%rcx
    1793:	48 8b 58 18          	mov    0x18(%rax),%rbx
    1797:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    179b:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
    179f:	8b 50 20             	mov    0x20(%rax),%edx
    17a2:	89 55 e0             	mov    %edx,-0x20(%rbp)
    17a5:	0f b7 40 24          	movzwl 0x24(%rax),%eax
    17a9:	66 89 45 e4          	mov    %ax,-0x1c(%rbp)
    17ad:	8b 45 8c             	mov    -0x74(%rbp),%eax
    17b0:	48 63 d0             	movslq %eax,%rdx
    17b3:	48 89 d0             	mov    %rdx,%rax
    17b6:	48 c1 e0 03          	shl    $0x3,%rax
    17ba:	48 01 d0             	add    %rdx,%rax
    17bd:	48 01 c0             	add    %rax,%rax
    17c0:	48 01 d0             	add    %rdx,%rax
    17c3:	48 01 c0             	add    %rax,%rax
    17c6:	48 89 c2             	mov    %rax,%rdx
    17c9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    17d0:	48 01 c2             	add    %rax,%rdx
    17d3:	8b 45 88             	mov    -0x78(%rbp),%eax
    17d6:	48 63 c8             	movslq %eax,%rcx
    17d9:	48 89 c8             	mov    %rcx,%rax
    17dc:	48 c1 e0 03          	shl    $0x3,%rax
    17e0:	48 01 c8             	add    %rcx,%rax
    17e3:	48 01 c0             	add    %rax,%rax
    17e6:	48 01 c8             	add    %rcx,%rax
    17e9:	48 01 c0             	add    %rax,%rax
    17ec:	48 89 c1             	mov    %rax,%rcx
    17ef:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    17f6:	48 01 c8             	add    %rcx,%rax
    17f9:	48 8b 0a             	mov    (%rdx),%rcx
    17fc:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
    1800:	48 89 08             	mov    %rcx,(%rax)
    1803:	48 89 58 08          	mov    %rbx,0x8(%rax)
    1807:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
    180b:	48 8b 5a 18          	mov    0x18(%rdx),%rbx
    180f:	48 89 48 10          	mov    %rcx,0x10(%rax)
    1813:	48 89 58 18          	mov    %rbx,0x18(%rax)
    1817:	8b 4a 20             	mov    0x20(%rdx),%ecx
    181a:	89 48 20             	mov    %ecx,0x20(%rax)
    181d:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
    1821:	66 89 50 24          	mov    %dx,0x24(%rax)
    1825:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1828:	48 63 d0             	movslq %eax,%rdx
    182b:	48 89 d0             	mov    %rdx,%rax
    182e:	48 c1 e0 03          	shl    $0x3,%rax
    1832:	48 01 d0             	add    %rdx,%rax
    1835:	48 01 c0             	add    %rax,%rax
    1838:	48 01 d0             	add    %rdx,%rax
    183b:	48 01 c0             	add    %rax,%rax
    183e:	48 89 c2             	mov    %rax,%rdx
    1841:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1848:	48 01 d0             	add    %rdx,%rax
    184b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    184f:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    1853:	48 89 08             	mov    %rcx,(%rax)
    1856:	48 89 58 08          	mov    %rbx,0x8(%rax)
    185a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    185e:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    1862:	48 89 48 10          	mov    %rcx,0x10(%rax)
    1866:	48 89 58 18          	mov    %rbx,0x18(%rax)
    186a:	8b 55 e0             	mov    -0x20(%rbp),%edx
    186d:	89 50 20             	mov    %edx,0x20(%rax)
    1870:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
    1874:	66 89 50 24          	mov    %dx,0x24(%rax)
    1878:	8b 45 88             	mov    -0x78(%rbp),%eax
    187b:	3b 45 8c             	cmp    -0x74(%rbp),%eax
    187e:	0f 8e 4d fe ff ff    	jle    16d1 <quickSortAverageScore+0x89>
    1884:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1887:	48 63 d0             	movslq %eax,%rdx
    188a:	48 89 d0             	mov    %rdx,%rax
    188d:	48 c1 e0 03          	shl    $0x3,%rax
    1891:	48 01 d0             	add    %rdx,%rax
    1894:	48 01 c0             	add    %rax,%rax
    1897:	48 01 d0             	add    %rdx,%rax
    189a:	48 01 c0             	add    %rax,%rax
    189d:	48 89 c2             	mov    %rax,%rdx
    18a0:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    18a7:	48 01 c2             	add    %rax,%rdx
    18aa:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    18b1:	48 8b 0a             	mov    (%rdx),%rcx
    18b4:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
    18b8:	48 89 08             	mov    %rcx,(%rax)
    18bb:	48 89 58 08          	mov    %rbx,0x8(%rax)
    18bf:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
    18c3:	48 8b 5a 18          	mov    0x18(%rdx),%rbx
    18c7:	48 89 48 10          	mov    %rcx,0x10(%rax)
    18cb:	48 89 58 18          	mov    %rbx,0x18(%rax)
    18cf:	8b 4a 20             	mov    0x20(%rdx),%ecx
    18d2:	89 48 20             	mov    %ecx,0x20(%rax)
    18d5:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
    18d9:	66 89 50 24          	mov    %dx,0x24(%rax)
    18dd:	8b 45 8c             	mov    -0x74(%rbp),%eax
    18e0:	48 63 d0             	movslq %eax,%rdx
    18e3:	48 89 d0             	mov    %rdx,%rax
    18e6:	48 c1 e0 03          	shl    $0x3,%rax
    18ea:	48 01 d0             	add    %rdx,%rax
    18ed:	48 01 c0             	add    %rax,%rax
    18f0:	48 01 d0             	add    %rdx,%rax
    18f3:	48 01 c0             	add    %rax,%rax
    18f6:	48 89 c2             	mov    %rax,%rdx
    18f9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1900:	48 01 d0             	add    %rdx,%rax
    1903:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    1907:	48 8b 5d 98          	mov    -0x68(%rbp),%rbx
    190b:	48 89 08             	mov    %rcx,(%rax)
    190e:	48 89 58 08          	mov    %rbx,0x8(%rax)
    1912:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    1916:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    191a:	48 89 48 10          	mov    %rcx,0x10(%rax)
    191e:	48 89 58 18          	mov    %rbx,0x18(%rax)
    1922:	8b 55 b0             	mov    -0x50(%rbp),%edx
    1925:	89 50 20             	mov    %edx,0x20(%rax)
    1928:	0f b7 55 b4          	movzwl -0x4c(%rbp),%edx
    192c:	66 89 50 24          	mov    %dx,0x24(%rax)
    1930:	8b 55 8c             	mov    -0x74(%rbp),%edx
    1933:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    193a:	89 d6                	mov    %edx,%esi
    193c:	48 89 c7             	mov    %rax,%rdi
    193f:	e8 04 fd ff ff       	call   1648 <quickSortAverageScore>
    1944:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
    194a:	2b 45 8c             	sub    -0x74(%rbp),%eax
    194d:	8d 48 ff             	lea    -0x1(%rax),%ecx
    1950:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1953:	48 98                	cltq   
    1955:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1959:	48 89 d0             	mov    %rdx,%rax
    195c:	48 c1 e0 03          	shl    $0x3,%rax
    1960:	48 01 d0             	add    %rdx,%rax
    1963:	48 01 c0             	add    %rax,%rax
    1966:	48 01 d0             	add    %rdx,%rax
    1969:	48 01 c0             	add    %rax,%rax
    196c:	48 89 c2             	mov    %rax,%rdx
    196f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1976:	48 01 d0             	add    %rdx,%rax
    1979:	89 ce                	mov    %ecx,%esi
    197b:	48 89 c7             	mov    %rax,%rdi
    197e:	e8 c5 fc ff ff       	call   1648 <quickSortAverageScore>
    1983:	eb 01                	jmp    1986 <quickSortAverageScore+0x33e>
    1985:	90                   	nop
    1986:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    198a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1991:	00 00 
    1993:	74 05                	je     199a <quickSortAverageScore+0x352>
    1995:	e8 e6 f6 ff ff       	call   1080 <__stack_chk_fail@plt>
    199a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    199e:	c9                   	leave  
    199f:	c3                   	ret    

00000000000019a0 <main>:
    19a0:	f3 0f 1e fa          	endbr64 
    19a4:	55                   	push   %rbp
    19a5:	48 89 e5             	mov    %rsp,%rbp
    19a8:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
    19af:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19b6:	00 00 
    19b8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    19bc:	31 c0                	xor    %eax,%eax
    19be:	be 26 00 00 00       	mov    $0x26,%esi
    19c3:	48 8d 05 85 06 00 00 	lea    0x685(%rip),%rax        # 204f <_IO_stdin_used+0x4f>
    19ca:	48 89 c7             	mov    %rax,%rdi
    19cd:	b8 00 00 00 00       	mov    $0x0,%eax
    19d2:	e8 b9 f6 ff ff       	call   1090 <printf@plt>
    19d7:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    19de:	be 0a 00 00 00       	mov    $0xa,%esi
    19e3:	48 89 c7             	mov    %rax,%rdi
    19e6:	e8 bf fa ff ff       	call   14aa <initStudents>
    19eb:	48 8b 85 96 fe ff ff 	mov    -0x16a(%rbp),%rax
    19f2:	48 8b 95 9e fe ff ff 	mov    -0x162(%rbp),%rdx
    19f9:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    1a00:	48 89 95 78 fe ff ff 	mov    %rdx,-0x188(%rbp)
    1a07:	48 8b 85 a6 fe ff ff 	mov    -0x15a(%rbp),%rax
    1a0e:	48 8b 95 ae fe ff ff 	mov    -0x152(%rbp),%rdx
    1a15:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1a1c:	48 89 95 88 fe ff ff 	mov    %rdx,-0x178(%rbp)
    1a23:	8b 85 b6 fe ff ff    	mov    -0x14a(%rbp),%eax
    1a29:	89 85 90 fe ff ff    	mov    %eax,-0x170(%rbp)
    1a2f:	0f b7 85 ba fe ff ff 	movzwl -0x146(%rbp),%eax
    1a36:	66 89 85 94 fe ff ff 	mov    %ax,-0x16c(%rbp)
    1a3d:	48 8d 05 14 06 00 00 	lea    0x614(%rip),%rax        # 2058 <_IO_stdin_used+0x58>
    1a44:	48 89 c7             	mov    %rax,%rdi
    1a47:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4c:	e8 3f f6 ff ff       	call   1090 <printf@plt>
    1a51:	e8 33 f7 ff ff       	call   1189 <now_ms>
    1a56:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1a5b:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    1a62:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    1a69:	be 0a 00 00 00       	mov    $0xa,%esi
    1a6e:	48 89 c7             	mov    %rax,%rdi
    1a71:	e8 08 fb ff ff       	call   157e <computeAverageScore>
    1a76:	e8 0e f7 ff ff       	call   1189 <now_ms>
    1a7b:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1a80:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    1a87:	f2 0f 10 85 48 fe ff 	movsd  -0x1b8(%rbp),%xmm0
    1a8e:	ff 
    1a8f:	f2 0f 5c 85 40 fe ff 	subsd  -0x1c0(%rbp),%xmm0
    1a96:	ff 
    1a97:	f2 0f 11 85 50 fe ff 	movsd  %xmm0,-0x1b0(%rbp)
    1a9e:	ff 
    1a9f:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    1aa6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1aab:	48 8d 05 c6 05 00 00 	lea    0x5c6(%rip),%rax        # 2078 <_IO_stdin_used+0x78>
    1ab2:	48 89 c7             	mov    %rax,%rdi
    1ab5:	b8 01 00 00 00       	mov    $0x1,%eax
    1aba:	e8 d1 f5 ff ff       	call   1090 <printf@plt>
    1abf:	48 8d 05 c2 05 00 00 	lea    0x5c2(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    1ac6:	48 89 c7             	mov    %rax,%rdi
    1ac9:	b8 00 00 00 00       	mov    $0x0,%eax
    1ace:	e8 bd f5 ff ff       	call   1090 <printf@plt>
    1ad3:	e8 b1 f6 ff ff       	call   1189 <now_ms>
    1ad8:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1add:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    1ae4:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    1aeb:	be 0a 00 00 00       	mov    $0xa,%esi
    1af0:	48 89 c7             	mov    %rax,%rdi
    1af3:	e8 50 fb ff ff       	call   1648 <quickSortAverageScore>
    1af8:	e8 8c f6 ff ff       	call   1189 <now_ms>
    1afd:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1b02:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    1b09:	f2 0f 10 85 60 fe ff 	movsd  -0x1a0(%rbp),%xmm0
    1b10:	ff 
    1b11:	f2 0f 5c 85 58 fe ff 	subsd  -0x1a8(%rbp),%xmm0
    1b18:	ff 
    1b19:	f2 0f 11 85 68 fe ff 	movsd  %xmm0,-0x198(%rbp)
    1b20:	ff 
    1b21:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1b28:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1b2d:	48 8d 05 44 05 00 00 	lea    0x544(%rip),%rax        # 2078 <_IO_stdin_used+0x78>
    1b34:	48 89 c7             	mov    %rax,%rdi
    1b37:	b8 01 00 00 00       	mov    $0x1,%eax
    1b3c:	e8 4f f5 ff ff       	call   1090 <printf@plt>
    1b41:	b8 00 00 00 00       	mov    $0x0,%eax
    1b46:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1b4a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1b51:	00 00 
    1b53:	74 05                	je     1b5a <main+0x1ba>
    1b55:	e8 26 f5 ff ff       	call   1080 <__stack_chk_fail@plt>
    1b5a:	c9                   	leave  
    1b5b:	c3                   	ret    

Disassembly of section .fini:

0000000000001b5c <_fini>:
    1b5c:	f3 0f 1e fa          	endbr64 
    1b60:	48 83 ec 08          	sub    $0x8,%rsp
    1b64:	48 83 c4 08          	add    $0x8,%rsp
    1b68:	c3                   	ret    
