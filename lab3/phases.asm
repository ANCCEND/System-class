
phases.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <phase_1>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 17 <phase_1+0x17>
  17:	83 e8 30             	sub    $0x30,%eax
  1a:	88 45 fb             	mov    %al,-0x5(%rbp)
  1d:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
  21:	89 45 fc             	mov    %eax,-0x4(%rbp)
  24:	8b 55 fc             	mov    -0x4(%rbp),%edx
  27:	48 89 d0             	mov    %rdx,%rax
  2a:	48 c1 e0 02          	shl    $0x2,%rax
  2e:	48 01 d0             	add    %rdx,%rax
  31:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  38:	00 
  39:	48 01 d0             	add    %rdx,%rax
  3c:	48 01 c0             	add    %rax,%rax
  3f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 46 <phase_1+0x46>
  46:	48 01 c2             	add    %rax,%rdx
  49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4d:	48 89 d6             	mov    %rdx,%rsi
  50:	48 89 c7             	mov    %rax,%rdi
  53:	e8 00 00 00 00       	call   58 <phase_1+0x58>
  58:	85 c0                	test   %eax,%eax
  5a:	74 05                	je     61 <phase_1+0x61>
  5c:	e8 00 00 00 00       	call   61 <phase_1+0x61>
  61:	90                   	nop
  62:	c9                   	leave  
  63:	c3                   	ret    

0000000000000064 <phase_2>:
  64:	f3 0f 1e fa          	endbr64 
  68:	55                   	push   %rbp
  69:	48 89 e5             	mov    %rsp,%rbp
  6c:	48 83 ec 40          	sub    $0x40,%rsp
  70:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  74:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  7b:	00 00 
  7d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  81:	31 c0                	xor    %eax,%eax
  83:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  87:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  8b:	48 89 d6             	mov    %rdx,%rsi
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	call   96 <phase_2+0x32>
  96:	8b 45 e0             	mov    -0x20(%rbp),%eax
  99:	85 c0                	test   %eax,%eax
  9b:	79 05                	jns    a2 <phase_2+0x3e>
  9d:	e8 00 00 00 00       	call   a2 <phase_2+0x3e>
  a2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  a5:	0f b6 15 00 00 00 00 	movzbl 0x0(%rip),%edx        # ac <phase_2+0x48>
  ac:	0f be d2             	movsbl %dl,%edx
  af:	83 ea 30             	sub    $0x30,%edx
  b2:	39 d0                	cmp    %edx,%eax
  b4:	74 05                	je     bb <phase_2+0x57>
  b6:	e8 00 00 00 00       	call   bb <phase_2+0x57>
  bb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  be:	0f b6 15 00 00 00 00 	movzbl 0x0(%rip),%edx        # c5 <phase_2+0x61>
  c5:	0f be d2             	movsbl %dl,%edx
  c8:	83 ea 30             	sub    $0x30,%edx
  cb:	39 d0                	cmp    %edx,%eax
  cd:	74 05                	je     d4 <phase_2+0x70>
  cf:	e8 00 00 00 00       	call   d4 <phase_2+0x70>
  d4:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
  db:	eb 33                	jmp    110 <phase_2+0xac>
  dd:	8b 45 dc             	mov    -0x24(%rbp),%eax
  e0:	48 98                	cltq   
  e2:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
  e6:	8b 45 dc             	mov    -0x24(%rbp),%eax
  e9:	83 e8 01             	sub    $0x1,%eax
  ec:	48 98                	cltq   
  ee:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
  f2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  f5:	83 e8 02             	sub    $0x2,%eax
  f8:	48 98                	cltq   
  fa:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
  fe:	01 c8                	add    %ecx,%eax
 100:	83 c0 01             	add    $0x1,%eax
 103:	39 c2                	cmp    %eax,%edx
 105:	74 05                	je     10c <phase_2+0xa8>
 107:	e8 00 00 00 00       	call   10c <phase_2+0xa8>
 10c:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
 110:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
 114:	7e c7                	jle    dd <phase_2+0x79>
 116:	90                   	nop
 117:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 11b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 122:	00 00 
 124:	74 05                	je     12b <phase_2+0xc7>
 126:	e8 00 00 00 00       	call   12b <phase_2+0xc7>
 12b:	c9                   	leave  
 12c:	c3                   	ret    

000000000000012d <phase_3>:
 12d:	f3 0f 1e fa          	endbr64 
 131:	55                   	push   %rbp
 132:	48 89 e5             	mov    %rsp,%rbp
 135:	48 83 ec 30          	sub    $0x30,%rsp
 139:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 13d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 144:	00 00 
 146:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 14a:	31 c0                	xor    %eax,%eax
 14c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
 153:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 15a:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
 15e:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
 162:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 166:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 16d <phase_3+0x40>
 16d:	48 89 c7             	mov    %rax,%rdi
 170:	b8 00 00 00 00       	mov    $0x0,%eax
 175:	e8 00 00 00 00       	call   17a <phase_3+0x4d>
 17a:	89 45 f4             	mov    %eax,-0xc(%rbp)
 17d:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
 181:	7f 05                	jg     188 <phase_3+0x5b>
 183:	e8 00 00 00 00       	call   188 <phase_3+0x5b>
 188:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 18f <phase_3+0x62>
 18f:	0f be c0             	movsbl %al,%eax
 192:	8d 50 d0             	lea    -0x30(%rax),%edx
 195:	8b 45 e8             	mov    -0x18(%rbp),%eax
 198:	39 c2                	cmp    %eax,%edx
 19a:	74 05                	je     1a1 <phase_3+0x74>
 19c:	e8 00 00 00 00       	call   1a1 <phase_3+0x74>
 1a1:	8b 45 e8             	mov    -0x18(%rbp),%eax
 1a4:	83 f8 09             	cmp    $0x9,%eax
 1a7:	77 7d                	ja     226 <phase_3+0xf9>
 1a9:	89 c0                	mov    %eax,%eax
 1ab:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 1b2:	00 
 1b3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ba <phase_3+0x8d>
 1ba:	8b 04 02             	mov    (%rdx,%rax,1),%eax
 1bd:	48 98                	cltq   
 1bf:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1c6 <phase_3+0x99>
 1c6:	48 01 d0             	add    %rdx,%rax
 1c9:	3e ff e0             	notrack jmp *%rax
 1cc:	c7 45 f0 ea 07 00 00 	movl   $0x7ea,-0x10(%rbp)
 1d3:	eb 56                	jmp    22b <phase_3+0xfe>
 1d5:	c7 45 f0 61 09 00 00 	movl   $0x961,-0x10(%rbp)
 1dc:	eb 4d                	jmp    22b <phase_3+0xfe>
 1de:	c7 45 f0 7b 00 00 00 	movl   $0x7b,-0x10(%rbp)
 1e5:	eb 44                	jmp    22b <phase_3+0xfe>
 1e7:	c7 45 f0 8e 02 00 00 	movl   $0x28e,-0x10(%rbp)
 1ee:	eb 3b                	jmp    22b <phase_3+0xfe>
 1f0:	c7 45 f0 1c 01 00 00 	movl   $0x11c,-0x10(%rbp)
 1f7:	eb 32                	jmp    22b <phase_3+0xfe>
 1f9:	c7 45 f0 15 03 00 00 	movl   $0x315,-0x10(%rbp)
 200:	eb 29                	jmp    22b <phase_3+0xfe>
 202:	c7 45 f0 a9 01 00 00 	movl   $0x1a9,-0x10(%rbp)
 209:	eb 20                	jmp    22b <phase_3+0xfe>
 20b:	c7 45 f0 63 00 00 00 	movl   $0x63,-0x10(%rbp)
 212:	eb 17                	jmp    22b <phase_3+0xfe>
 214:	c7 45 f0 64 00 00 00 	movl   $0x64,-0x10(%rbp)
 21b:	eb 0e                	jmp    22b <phase_3+0xfe>
 21d:	c7 45 f0 41 01 00 00 	movl   $0x141,-0x10(%rbp)
 224:	eb 05                	jmp    22b <phase_3+0xfe>
 226:	e8 00 00 00 00       	call   22b <phase_3+0xfe>
 22b:	8b 45 ec             	mov    -0x14(%rbp),%eax
 22e:	39 45 f0             	cmp    %eax,-0x10(%rbp)
 231:	74 05                	je     238 <phase_3+0x10b>
 233:	e8 00 00 00 00       	call   238 <phase_3+0x10b>
 238:	90                   	nop
 239:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 23d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 244:	00 00 
 246:	74 05                	je     24d <phase_3+0x120>
 248:	e8 00 00 00 00       	call   24d <phase_3+0x120>
 24d:	c9                   	leave  
 24e:	c3                   	ret    

000000000000024f <func4>:
 24f:	f3 0f 1e fa          	endbr64 
 253:	55                   	push   %rbp
 254:	48 89 e5             	mov    %rsp,%rbp
 257:	48 83 ec 20          	sub    $0x20,%rsp
 25b:	89 7d ec             	mov    %edi,-0x14(%rbp)
 25e:	89 75 e8             	mov    %esi,-0x18(%rbp)
 261:	89 55 e4             	mov    %edx,-0x1c(%rbp)
 264:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 267:	2b 45 e8             	sub    -0x18(%rbp),%eax
 26a:	89 c2                	mov    %eax,%edx
 26c:	c1 ea 1f             	shr    $0x1f,%edx
 26f:	01 d0                	add    %edx,%eax
 271:	d1 f8                	sar    %eax
 273:	89 c2                	mov    %eax,%edx
 275:	8b 45 e8             	mov    -0x18(%rbp),%eax
 278:	01 d0                	add    %edx,%eax
 27a:	89 45 fc             	mov    %eax,-0x4(%rbp)
 27d:	8b 45 fc             	mov    -0x4(%rbp),%eax
 280:	3b 45 ec             	cmp    -0x14(%rbp),%eax
 283:	7e 19                	jle    29e <func4+0x4f>
 285:	8b 45 fc             	mov    -0x4(%rbp),%eax
 288:	8d 50 ff             	lea    -0x1(%rax),%edx
 28b:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 28e:	8b 45 ec             	mov    -0x14(%rbp),%eax
 291:	89 ce                	mov    %ecx,%esi
 293:	89 c7                	mov    %eax,%edi
 295:	e8 00 00 00 00       	call   29a <func4+0x4b>
 29a:	01 c0                	add    %eax,%eax
 29c:	eb 29                	jmp    2c7 <func4+0x78>
 29e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2a1:	3b 45 ec             	cmp    -0x14(%rbp),%eax
 2a4:	7d 1c                	jge    2c2 <func4+0x73>
 2a6:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2a9:	8d 48 01             	lea    0x1(%rax),%ecx
 2ac:	8b 55 e4             	mov    -0x1c(%rbp),%edx
 2af:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2b2:	89 ce                	mov    %ecx,%esi
 2b4:	89 c7                	mov    %eax,%edi
 2b6:	e8 00 00 00 00       	call   2bb <func4+0x6c>
 2bb:	01 c0                	add    %eax,%eax
 2bd:	83 c0 01             	add    $0x1,%eax
 2c0:	eb 05                	jmp    2c7 <func4+0x78>
 2c2:	b8 00 00 00 00       	mov    $0x0,%eax
 2c7:	c9                   	leave  
 2c8:	c3                   	ret    

00000000000002c9 <phase_4>:
 2c9:	f3 0f 1e fa          	endbr64 
 2cd:	55                   	push   %rbp
 2ce:	48 89 e5             	mov    %rsp,%rbp
 2d1:	48 83 ec 30          	sub    $0x30,%rsp
 2d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 2d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 2e0:	00 00 
 2e2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 2e6:	31 c0                	xor    %eax,%eax
 2e8:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
 2ec:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
 2f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2f4:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2fb <phase_4+0x32>
 2fb:	48 89 c7             	mov    %rax,%rdi
 2fe:	b8 00 00 00 00       	mov    $0x0,%eax
 303:	e8 00 00 00 00       	call   308 <phase_4+0x3f>
 308:	89 45 ec             	mov    %eax,-0x14(%rbp)
 30b:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
 30f:	75 0f                	jne    320 <phase_4+0x57>
 311:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 314:	85 c0                	test   %eax,%eax
 316:	78 08                	js     320 <phase_4+0x57>
 318:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 31b:	83 f8 0e             	cmp    $0xe,%eax
 31e:	7e 05                	jle    325 <phase_4+0x5c>
 320:	e8 00 00 00 00       	call   325 <phase_4+0x5c>
 325:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
 32c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 32f:	ba 0e 00 00 00       	mov    $0xe,%edx
 334:	be 00 00 00 00       	mov    $0x0,%esi
 339:	89 c7                	mov    %eax,%edi
 33b:	e8 00 00 00 00       	call   340 <phase_4+0x77>
 340:	89 45 f4             	mov    %eax,-0xc(%rbp)
 343:	8b 45 f4             	mov    -0xc(%rbp),%eax
 346:	3b 45 f0             	cmp    -0x10(%rbp),%eax
 349:	75 08                	jne    353 <phase_4+0x8a>
 34b:	8b 45 e8             	mov    -0x18(%rbp),%eax
 34e:	39 45 f0             	cmp    %eax,-0x10(%rbp)
 351:	74 05                	je     358 <phase_4+0x8f>
 353:	e8 00 00 00 00       	call   358 <phase_4+0x8f>
 358:	90                   	nop
 359:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 35d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 364:	00 00 
 366:	74 05                	je     36d <phase_4+0xa4>
 368:	e8 00 00 00 00       	call   36d <phase_4+0xa4>
 36d:	c9                   	leave  
 36e:	c3                   	ret    

000000000000036f <phase_5>:
 36f:	f3 0f 1e fa          	endbr64 
 373:	55                   	push   %rbp
 374:	48 89 e5             	mov    %rsp,%rbp
 377:	48 83 ec 30          	sub    $0x30,%rsp
 37b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 37f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 386:	00 00 
 388:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 38c:	31 c0                	xor    %eax,%eax
 38e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 392:	48 89 c7             	mov    %rax,%rdi
 395:	e8 00 00 00 00       	call   39a <phase_5+0x2b>
 39a:	89 45 ec             	mov    %eax,-0x14(%rbp)
 39d:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
 3a1:	74 05                	je     3a8 <phase_5+0x39>
 3a3:	e8 00 00 00 00       	call   3a8 <phase_5+0x39>
 3a8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
 3af:	eb 30                	jmp    3e1 <phase_5+0x72>
 3b1:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3b4:	48 63 d0             	movslq %eax,%rdx
 3b7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 3bb:	48 01 d0             	add    %rdx,%rax
 3be:	0f b6 00             	movzbl (%rax),%eax
 3c1:	0f be c0             	movsbl %al,%eax
 3c4:	83 e0 0f             	and    $0xf,%eax
 3c7:	48 98                	cltq   
 3c9:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3d0 <phase_5+0x61>
 3d0:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
 3d4:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3d7:	48 98                	cltq   
 3d9:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
 3dd:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
 3e1:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
 3e5:	7e ca                	jle    3b1 <phase_5+0x42>
 3e7:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
 3eb:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
 3ef:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3f6 <phase_5+0x87>
 3f6:	48 89 d6             	mov    %rdx,%rsi
 3f9:	48 89 c7             	mov    %rax,%rdi
 3fc:	e8 00 00 00 00       	call   401 <phase_5+0x92>
 401:	85 c0                	test   %eax,%eax
 403:	74 05                	je     40a <phase_5+0x9b>
 405:	e8 00 00 00 00       	call   40a <phase_5+0x9b>
 40a:	90                   	nop
 40b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 40f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 416:	00 00 
 418:	74 05                	je     41f <phase_5+0xb0>
 41a:	e8 00 00 00 00       	call   41f <phase_5+0xb0>
 41f:	c9                   	leave  
 420:	c3                   	ret    

0000000000000421 <phase_6>:
 421:	f3 0f 1e fa          	endbr64 
 425:	55                   	push   %rbp
 426:	48 89 e5             	mov    %rsp,%rbp
 429:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
 430:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
 437:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 43e:	00 00 
 440:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 444:	31 c0                	xor    %eax,%eax
 446:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 44d <phase_6+0x2c>
 44d:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 451:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
 455:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 45c:	48 89 d6             	mov    %rdx,%rsi
 45f:	48 89 c7             	mov    %rax,%rdi
 462:	e8 00 00 00 00       	call   467 <phase_6+0x46>
 467:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 46e:	eb 54                	jmp    4c4 <phase_6+0xa3>
 470:	8b 45 88             	mov    -0x78(%rbp),%eax
 473:	48 98                	cltq   
 475:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 479:	85 c0                	test   %eax,%eax
 47b:	7e 0e                	jle    48b <phase_6+0x6a>
 47d:	8b 45 88             	mov    -0x78(%rbp),%eax
 480:	48 98                	cltq   
 482:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 486:	83 f8 06             	cmp    $0x6,%eax
 489:	7e 05                	jle    490 <phase_6+0x6f>
 48b:	e8 00 00 00 00       	call   490 <phase_6+0x6f>
 490:	8b 45 88             	mov    -0x78(%rbp),%eax
 493:	83 c0 01             	add    $0x1,%eax
 496:	89 45 8c             	mov    %eax,-0x74(%rbp)
 499:	eb 1f                	jmp    4ba <phase_6+0x99>
 49b:	8b 45 88             	mov    -0x78(%rbp),%eax
 49e:	48 98                	cltq   
 4a0:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
 4a4:	8b 45 8c             	mov    -0x74(%rbp),%eax
 4a7:	48 98                	cltq   
 4a9:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 4ad:	39 c2                	cmp    %eax,%edx
 4af:	75 05                	jne    4b6 <phase_6+0x95>
 4b1:	e8 00 00 00 00       	call   4b6 <phase_6+0x95>
 4b6:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
 4ba:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp)
 4be:	7e db                	jle    49b <phase_6+0x7a>
 4c0:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 4c4:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 4c8:	7e a6                	jle    470 <phase_6+0x4f>
 4ca:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 4d1:	eb 41                	jmp    514 <phase_6+0xf3>
 4d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 4d7:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 4db:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
 4e2:	eb 10                	jmp    4f4 <phase_6+0xd3>
 4e4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 4e8:	48 8b 40 08          	mov    0x8(%rax),%rax
 4ec:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 4f0:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
 4f4:	8b 45 88             	mov    -0x78(%rbp),%eax
 4f7:	48 98                	cltq   
 4f9:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 4fd:	39 45 8c             	cmp    %eax,-0x74(%rbp)
 500:	7c e2                	jl     4e4 <phase_6+0xc3>
 502:	8b 45 88             	mov    -0x78(%rbp),%eax
 505:	48 98                	cltq   
 507:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
 50b:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
 510:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 514:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 518:	7e b9                	jle    4d3 <phase_6+0xb2>
 51a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 51e:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 522:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 526:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 52a:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
 531:	eb 22                	jmp    555 <phase_6+0x134>
 533:	8b 45 88             	mov    -0x78(%rbp),%eax
 536:	48 98                	cltq   
 538:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx
 53d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 541:	48 89 50 08          	mov    %rdx,0x8(%rax)
 545:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 549:	48 8b 40 08          	mov    0x8(%rax),%rax
 54d:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 551:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 555:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 559:	7e d8                	jle    533 <phase_6+0x112>
 55b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 55f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 566:	00 
 567:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 56b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 56f:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 576:	eb 29                	jmp    5a1 <phase_6+0x180>
 578:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 57c:	8b 10                	mov    (%rax),%edx
 57e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 582:	48 8b 40 08          	mov    0x8(%rax),%rax
 586:	8b 00                	mov    (%rax),%eax
 588:	39 c2                	cmp    %eax,%edx
 58a:	7d 05                	jge    591 <phase_6+0x170>
 58c:	e8 00 00 00 00       	call   591 <phase_6+0x170>
 591:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 595:	48 8b 40 08          	mov    0x8(%rax),%rax
 599:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 59d:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 5a1:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
 5a5:	7e d1                	jle    578 <phase_6+0x157>
 5a7:	90                   	nop
 5a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5ac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 5b3:	00 00 
 5b5:	74 05                	je     5bc <phase_6+0x19b>
 5b7:	e8 00 00 00 00       	call   5bc <phase_6+0x19b>
 5bc:	c9                   	leave  
 5bd:	c3                   	ret    

00000000000005be <fun7>:
 5be:	f3 0f 1e fa          	endbr64 
 5c2:	55                   	push   %rbp
 5c3:	48 89 e5             	mov    %rsp,%rbp
 5c6:	48 83 ec 10          	sub    $0x10,%rsp
 5ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 5ce:	89 75 f4             	mov    %esi,-0xc(%rbp)
 5d1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 5d6:	75 07                	jne    5df <fun7+0x21>
 5d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5dd:	eb 50                	jmp    62f <fun7+0x71>
 5df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5e3:	8b 00                	mov    (%rax),%eax
 5e5:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 5e8:	7d 19                	jge    603 <fun7+0x45>
 5ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5ee:	48 8b 40 08          	mov    0x8(%rax),%rax
 5f2:	8b 55 f4             	mov    -0xc(%rbp),%edx
 5f5:	89 d6                	mov    %edx,%esi
 5f7:	48 89 c7             	mov    %rax,%rdi
 5fa:	e8 00 00 00 00       	call   5ff <fun7+0x41>
 5ff:	01 c0                	add    %eax,%eax
 601:	eb 2c                	jmp    62f <fun7+0x71>
 603:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 607:	8b 00                	mov    (%rax),%eax
 609:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 60c:	75 07                	jne    615 <fun7+0x57>
 60e:	b8 00 00 00 00       	mov    $0x0,%eax
 613:	eb 1a                	jmp    62f <fun7+0x71>
 615:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 619:	48 8b 40 10          	mov    0x10(%rax),%rax
 61d:	8b 55 f4             	mov    -0xc(%rbp),%edx
 620:	89 d6                	mov    %edx,%esi
 622:	48 89 c7             	mov    %rax,%rdi
 625:	e8 00 00 00 00       	call   62a <fun7+0x6c>
 62a:	01 c0                	add    %eax,%eax
 62c:	83 c0 01             	add    $0x1,%eax
 62f:	c9                   	leave  
 630:	c3                   	ret    
