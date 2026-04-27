
bufbomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <free@plt-0x10>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 404018 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <putchar@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 404020 <putchar@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strcpy@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 404028 <strcpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <__isoc99_fscanf@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404030 <__isoc99_fscanf@GLIBC_2.7>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <puts@plt>:
  401070:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404038 <puts@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <fclose@plt>:
  401080:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404040 <fclose@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <strlen@plt>:
  401090:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404048 <strlen@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <printf@plt>:
  4010a0:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 404050 <printf@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <snprintf@plt>:
  4010b0:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 404058 <snprintf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <strcmp@plt>:
  4010c0:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 404060 <strcmp@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <fprintf@plt>:
  4010d0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 404068 <fprintf@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <memcpy@plt>:
  4010e0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 404070 <memcpy@GLIBC_2.14>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <malloc@plt>:
  4010f0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 404078 <malloc@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <__isoc99_sscanf@plt>:
  401100:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 404080 <__isoc99_sscanf@GLIBC_2.7>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <realloc@plt>:
  401110:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 404088 <realloc@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <fopen@plt>:
  401120:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 404090 <fopen@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <atoi@plt>:
  401130:	ff 25 62 2f 00 00    	jmp    *0x2f62(%rip)        # 404098 <atoi@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <exit@plt>:
  401140:	ff 25 5a 2f 00 00    	jmp    *0x2f5a(%rip)        # 4040a0 <exit@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <__ctype_b_loc@plt>:
  401150:	ff 25 52 2f 00 00    	jmp    *0x2f52(%rip)        # 4040a8 <__ctype_b_loc@GLIBC_2.3>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401160 <_start>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	31 ed                	xor    %ebp,%ebp
  401166:	49 89 d1             	mov    %rdx,%r9
  401169:	5e                   	pop    %rsi
  40116a:	48 89 e2             	mov    %rsp,%rdx
  40116d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401171:	50                   	push   %rax
  401172:	54                   	push   %rsp
  401173:	45 31 c0             	xor    %r8d,%r8d
  401176:	31 c9                	xor    %ecx,%ecx
  401178:	48 c7 c7 11 17 40 00 	mov    $0x401711,%rdi
  40117f:	ff 15 6b 2e 00 00    	call   *0x2e6b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401185:	f4                   	hlt    
  401186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40118d:	00 00 00 

0000000000401190 <_dl_relocate_static_pie>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	c3                   	ret    
  401195:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40119c:	00 00 00 
  40119f:	90                   	nop

00000000004011a0 <deregister_tm_clones>:
  4011a0:	b8 d0 40 40 00       	mov    $0x4040d0,%eax
  4011a5:	48 3d d0 40 40 00    	cmp    $0x4040d0,%rax
  4011ab:	74 13                	je     4011c0 <deregister_tm_clones+0x20>
  4011ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b2:	48 85 c0             	test   %rax,%rax
  4011b5:	74 09                	je     4011c0 <deregister_tm_clones+0x20>
  4011b7:	bf d0 40 40 00       	mov    $0x4040d0,%edi
  4011bc:	ff e0                	jmp    *%rax
  4011be:	66 90                	xchg   %ax,%ax
  4011c0:	c3                   	ret    
  4011c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011c8:	00 00 00 00 
  4011cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011d0 <register_tm_clones>:
  4011d0:	be d0 40 40 00       	mov    $0x4040d0,%esi
  4011d5:	48 81 ee d0 40 40 00 	sub    $0x4040d0,%rsi
  4011dc:	48 89 f0             	mov    %rsi,%rax
  4011df:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4011e3:	48 c1 f8 03          	sar    $0x3,%rax
  4011e7:	48 01 c6             	add    %rax,%rsi
  4011ea:	48 d1 fe             	sar    %rsi
  4011ed:	74 11                	je     401200 <register_tm_clones+0x30>
  4011ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f4:	48 85 c0             	test   %rax,%rax
  4011f7:	74 07                	je     401200 <register_tm_clones+0x30>
  4011f9:	bf d0 40 40 00       	mov    $0x4040d0,%edi
  4011fe:	ff e0                	jmp    *%rax
  401200:	c3                   	ret    
  401201:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401208:	00 00 00 00 
  40120c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401210 <__do_global_dtors_aux>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	80 3d cd 2e 00 00 00 	cmpb   $0x0,0x2ecd(%rip)        # 4040e8 <completed.0>
  40121b:	75 13                	jne    401230 <__do_global_dtors_aux+0x20>
  40121d:	55                   	push   %rbp
  40121e:	48 89 e5             	mov    %rsp,%rbp
  401221:	e8 7a ff ff ff       	call   4011a0 <deregister_tm_clones>
  401226:	c6 05 bb 2e 00 00 01 	movb   $0x1,0x2ebb(%rip)        # 4040e8 <completed.0>
  40122d:	5d                   	pop    %rbp
  40122e:	c3                   	ret    
  40122f:	90                   	nop
  401230:	c3                   	ret    
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <frame_dummy>:
  401240:	f3 0f 1e fa          	endbr64 
  401244:	eb 8a                	jmp    4011d0 <register_tm_clones>

0000000000401246 <hash_string>:
  401246:	55                   	push   %rbp
  401247:	48 89 e5             	mov    %rsp,%rbp
  40124a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40124e:	c7 45 fc 78 56 34 12 	movl   $0x12345678,-0x4(%rbp)
  401255:	eb 25                	jmp    40127c <hash_string+0x36>
  401257:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40125a:	c1 e0 05             	shl    $0x5,%eax
  40125d:	89 c2                	mov    %eax,%edx
  40125f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401262:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
  401265:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401269:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40126d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401271:	0f b6 00             	movzbl (%rax),%eax
  401274:	0f be c0             	movsbl %al,%eax
  401277:	01 c8                	add    %ecx,%eax
  401279:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40127c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401280:	0f b6 00             	movzbl (%rax),%eax
  401283:	84 c0                	test   %al,%al
  401285:	75 d0                	jne    401257 <hash_string+0x11>
  401287:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40128a:	5d                   	pop    %rbp
  40128b:	c3                   	ret    

000000000040128c <init_random_code>:
  40128c:	55                   	push   %rbp
  40128d:	48 89 e5             	mov    %rsp,%rbp
  401290:	48 8d 05 71 0d 00 00 	lea    0xd71(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  401297:	48 89 c7             	mov    %rax,%rdi
  40129a:	e8 a7 ff ff ff       	call   401246 <hash_string>
  40129f:	89 c1                	mov    %eax,%ecx
  4012a1:	48 8d 05 7d 0d 00 00 	lea    0xd7d(%rip),%rax        # 402025 <_IO_stdin_used+0x25>
  4012a8:	48 89 c2             	mov    %rax,%rdx
  4012ab:	be 09 00 00 00       	mov    $0x9,%esi
  4012b0:	48 8d 05 39 2e 00 00 	lea    0x2e39(%rip),%rax        # 4040f0 <RANDOM_CODE>
  4012b7:	48 89 c7             	mov    %rax,%rdi
  4012ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4012bf:	e8 ec fd ff ff       	call   4010b0 <snprintf@plt>
  4012c4:	90                   	nop
  4012c5:	5d                   	pop    %rbp
  4012c6:	c3                   	ret    

00000000004012c7 <version_info>:
  4012c7:	55                   	push   %rbp
  4012c8:	48 89 e5             	mov    %rsp,%rbp
  4012cb:	e8 bc ff ff ff       	call   40128c <init_random_code>
  4012d0:	48 8d 05 59 0d 00 00 	lea    0xd59(%rip),%rax        # 402030 <_IO_stdin_used+0x30>
  4012d7:	48 89 c7             	mov    %rax,%rdi
  4012da:	e8 91 fd ff ff       	call   401070 <puts@plt>
  4012df:	48 8d 05 22 0d 00 00 	lea    0xd22(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  4012e6:	48 89 c7             	mov    %rax,%rdi
  4012e9:	e8 58 ff ff ff       	call   401246 <hash_string>
  4012ee:	89 c6                	mov    %eax,%esi
  4012f0:	48 8d 05 67 0d 00 00 	lea    0xd67(%rip),%rax        # 40205e <_IO_stdin_used+0x5e>
  4012f7:	48 89 c7             	mov    %rax,%rdi
  4012fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4012ff:	e8 9c fd ff ff       	call   4010a0 <printf@plt>
  401304:	48 8d 05 e5 2d 00 00 	lea    0x2de5(%rip),%rax        # 4040f0 <RANDOM_CODE>
  40130b:	48 89 c6             	mov    %rax,%rsi
  40130e:	48 8d 05 63 0d 00 00 	lea    0xd63(%rip),%rax        # 402078 <_IO_stdin_used+0x78>
  401315:	48 89 c7             	mov    %rax,%rdi
  401318:	b8 00 00 00 00       	mov    $0x0,%eax
  40131d:	e8 7e fd ff ff       	call   4010a0 <printf@plt>
  401322:	48 8d 05 70 0d 00 00 	lea    0xd70(%rip),%rax        # 402099 <_IO_stdin_used+0x99>
  401329:	48 89 c2             	mov    %rax,%rdx
  40132c:	48 8d 05 6f 0d 00 00 	lea    0xd6f(%rip),%rax        # 4020a2 <_IO_stdin_used+0xa2>
  401333:	48 89 c6             	mov    %rax,%rsi
  401336:	48 8d 05 71 0d 00 00 	lea    0xd71(%rip),%rax        # 4020ae <_IO_stdin_used+0xae>
  40133d:	48 89 c7             	mov    %rax,%rdi
  401340:	b8 00 00 00 00       	mov    $0x0,%eax
  401345:	e8 56 fd ff ff       	call   4010a0 <printf@plt>
  40134a:	bf 0a 00 00 00       	mov    $0xa,%edi
  40134f:	e8 ec fc ff ff       	call   401040 <putchar@plt>
  401354:	90                   	nop
  401355:	5d                   	pop    %rbp
  401356:	c3                   	ret    

0000000000401357 <initialize_bomb>:
  401357:	55                   	push   %rbp
  401358:	48 89 e5             	mov    %rsp,%rbp
  40135b:	48 83 ec 30          	sub    $0x30,%rsp
  40135f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401363:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
  40136a:	c7 45 f8 14 00 00 00 	movl   $0x14,-0x8(%rbp)
  401371:	c7 45 f4 1e 00 00 00 	movl   $0x1e,-0xc(%rbp)
  401378:	c7 45 f0 28 00 00 00 	movl   $0x28,-0x10(%rbp)
  40137f:	c7 45 ec 32 00 00 00 	movl   $0x32,-0x14(%rbp)
  401386:	c7 45 e8 3c 00 00 00 	movl   $0x3c,-0x18(%rbp)
  40138d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401391:	48 89 c7             	mov    %rax,%rdi
  401394:	e8 f7 fc ff ff       	call   401090 <strlen@plt>
  401399:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40139c:	83 7d e4 0a          	cmpl   $0xa,-0x1c(%rbp)
  4013a0:	74 19                	je     4013bb <initialize_bomb+0x64>
  4013a2:	48 8d 05 1f 0d 00 00 	lea    0xd1f(%rip),%rax        # 4020c8 <_IO_stdin_used+0xc8>
  4013a9:	48 89 c7             	mov    %rax,%rdi
  4013ac:	e8 bf fc ff ff       	call   401070 <puts@plt>
  4013b1:	bf 00 00 00 00       	mov    $0x0,%edi
  4013b6:	e8 85 fd ff ff       	call   401140 <exit@plt>
  4013bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013bf:	48 89 c6             	mov    %rax,%rsi
  4013c2:	48 8d 05 39 0d 00 00 	lea    0xd39(%rip),%rax        # 402102 <_IO_stdin_used+0x102>
  4013c9:	48 89 c7             	mov    %rax,%rdi
  4013cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d1:	e8 ca fc ff ff       	call   4010a0 <printf@plt>
  4013d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4013d9:	48 98                	cltq   
  4013db:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  4013df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013e3:	48 01 d0             	add    %rdx,%rax
  4013e6:	0f b6 00             	movzbl (%rax),%eax
  4013e9:	3c 32                	cmp    $0x32,%al
  4013eb:	75 1f                	jne    40140c <initialize_bomb+0xb5>
  4013ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013f0:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  4013f3:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4013f6:	89 d0                	mov    %edx,%eax
  4013f8:	01 c0                	add    %eax,%eax
  4013fa:	01 d0                	add    %edx,%eax
  4013fc:	8d 14 01             	lea    (%rcx,%rax,1),%edx
  4013ff:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401402:	c1 e0 02             	shl    $0x2,%eax
  401405:	01 d0                	add    %edx,%eax
  401407:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40140a:	eb 37                	jmp    401443 <initialize_bomb+0xec>
  40140c:	48 8d 05 fd 0c 00 00 	lea    0xcfd(%rip),%rax        # 402110 <_IO_stdin_used+0x110>
  401413:	48 89 c7             	mov    %rax,%rdi
  401416:	e8 55 fc ff ff       	call   401070 <puts@plt>
  40141b:	48 8d 05 26 0d 00 00 	lea    0xd26(%rip),%rax        # 402148 <_IO_stdin_used+0x148>
  401422:	48 89 c7             	mov    %rax,%rdi
  401425:	e8 46 fc ff ff       	call   401070 <puts@plt>
  40142a:	48 8d 05 4f 0d 00 00 	lea    0xd4f(%rip),%rax        # 402180 <_IO_stdin_used+0x180>
  401431:	48 89 c7             	mov    %rax,%rdi
  401434:	e8 37 fc ff ff       	call   401070 <puts@plt>
  401439:	bf 00 00 00 00       	mov    $0x0,%edi
  40143e:	e8 fd fc ff ff       	call   401140 <exit@plt>
  401443:	c9                   	leave  
  401444:	c3                   	ret    

0000000000401445 <smoke>:
  401445:	55                   	push   %rbp
  401446:	48 89 e5             	mov    %rsp,%rbp
  401449:	48 8d 05 58 0d 00 00 	lea    0xd58(%rip),%rax        # 4021a8 <_IO_stdin_used+0x1a8>
  401450:	48 89 c7             	mov    %rax,%rdi
  401453:	e8 18 fc ff ff       	call   401070 <puts@plt>
  401458:	bf 00 00 00 00       	mov    $0x0,%edi
  40145d:	e8 de fc ff ff       	call   401140 <exit@plt>

0000000000401462 <fizz>:
  401462:	55                   	push   %rbp
  401463:	48 89 e5             	mov    %rsp,%rbp
  401466:	48 83 ec 10          	sub    $0x10,%rsp
  40146a:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40146d:	8b 05 95 2c 00 00    	mov    0x2c95(%rip),%eax        # 404108 <cookie>
  401473:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401476:	75 1b                	jne    401493 <fizz+0x31>
  401478:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40147b:	89 c6                	mov    %eax,%esi
  40147d:	48 8d 05 3f 0d 00 00 	lea    0xd3f(%rip),%rax        # 4021c3 <_IO_stdin_used+0x1c3>
  401484:	48 89 c7             	mov    %rax,%rdi
  401487:	b8 00 00 00 00       	mov    $0x0,%eax
  40148c:	e8 0f fc ff ff       	call   4010a0 <printf@plt>
  401491:	eb 19                	jmp    4014ac <fizz+0x4a>
  401493:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401496:	89 c6                	mov    %eax,%esi
  401498:	48 8d 05 49 0d 00 00 	lea    0xd49(%rip),%rax        # 4021e8 <_IO_stdin_used+0x1e8>
  40149f:	48 89 c7             	mov    %rax,%rdi
  4014a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a7:	e8 f4 fb ff ff       	call   4010a0 <printf@plt>
  4014ac:	bf 00 00 00 00       	mov    $0x0,%edi
  4014b1:	e8 8a fc ff ff       	call   401140 <exit@plt>

00000000004014b6 <bang>:
  4014b6:	55                   	push   %rbp
  4014b7:	48 89 e5             	mov    %rsp,%rbp
  4014ba:	48 83 ec 10          	sub    $0x10,%rsp
  4014be:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4014c1:	8b 15 45 2c 00 00    	mov    0x2c45(%rip),%edx        # 40410c <global_value>
  4014c7:	8b 05 3b 2c 00 00    	mov    0x2c3b(%rip),%eax        # 404108 <cookie>
  4014cd:	39 c2                	cmp    %eax,%edx
  4014cf:	75 1e                	jne    4014ef <bang+0x39>
  4014d1:	8b 05 35 2c 00 00    	mov    0x2c35(%rip),%eax        # 40410c <global_value>
  4014d7:	89 c6                	mov    %eax,%esi
  4014d9:	48 8d 05 28 0d 00 00 	lea    0xd28(%rip),%rax        # 402208 <_IO_stdin_used+0x208>
  4014e0:	48 89 c7             	mov    %rax,%rdi
  4014e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e8:	e8 b3 fb ff ff       	call   4010a0 <printf@plt>
  4014ed:	eb 1c                	jmp    40150b <bang+0x55>
  4014ef:	8b 05 17 2c 00 00    	mov    0x2c17(%rip),%eax        # 40410c <global_value>
  4014f5:	89 c6                	mov    %eax,%esi
  4014f7:	48 8d 05 2f 0d 00 00 	lea    0xd2f(%rip),%rax        # 40222d <_IO_stdin_used+0x22d>
  4014fe:	48 89 c7             	mov    %rax,%rdi
  401501:	b8 00 00 00 00       	mov    $0x0,%eax
  401506:	e8 95 fb ff ff       	call   4010a0 <printf@plt>
  40150b:	bf 00 00 00 00       	mov    $0x0,%edi
  401510:	e8 2b fc ff ff       	call   401140 <exit@plt>

0000000000401515 <test>:
  401515:	55                   	push   %rbp
  401516:	48 89 e5             	mov    %rsp,%rbp
  401519:	48 83 ec 30          	sub    $0x30,%rsp
  40151d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401521:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401528:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40152c:	8b 40 7c             	mov    0x7c(%rax),%eax
  40152f:	85 c0                	test   %eax,%eax
  401531:	74 24                	je     401557 <test+0x42>
  401533:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401537:	8b 40 7c             	mov    0x7c(%rax),%eax
  40153a:	83 f8 01             	cmp    $0x1,%eax
  40153d:	74 18                	je     401557 <test+0x42>
  40153f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401543:	8b 40 7c             	mov    0x7c(%rax),%eax
  401546:	83 f8 02             	cmp    $0x2,%eax
  401549:	74 0c                	je     401557 <test+0x42>
  40154b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40154f:	8b 40 7c             	mov    0x7c(%rax),%eax
  401552:	83 f8 03             	cmp    $0x3,%eax
  401555:	75 75                	jne    4015cc <test+0xb7>
  401557:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40155b:	48 8d 15 e9 0c 00 00 	lea    0xce9(%rip),%rdx        # 40224b <_IO_stdin_used+0x24b>
  401562:	48 89 d6             	mov    %rdx,%rsi
  401565:	48 89 c7             	mov    %rax,%rdi
  401568:	e8 b3 fb ff ff       	call   401120 <fopen@plt>
  40156d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401571:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  401576:	75 1d                	jne    401595 <test+0x80>
  401578:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40157c:	48 89 c6             	mov    %rax,%rsi
  40157f:	48 8d 05 c7 0c 00 00 	lea    0xcc7(%rip),%rax        # 40224d <_IO_stdin_used+0x24d>
  401586:	48 89 c7             	mov    %rax,%rdi
  401589:	b8 00 00 00 00       	mov    $0x0,%eax
  40158e:	e8 0d fb ff ff       	call   4010a0 <printf@plt>
  401593:	eb 76                	jmp    40160b <test+0xf6>
  401595:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
  401599:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40159d:	48 89 d6             	mov    %rdx,%rsi
  4015a0:	48 89 c7             	mov    %rax,%rdi
  4015a3:	e8 4e 03 00 00       	call   4018f6 <convert_to_byte_string>
  4015a8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4015ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4015b0:	48 89 c7             	mov    %rax,%rdi
  4015b3:	e8 c8 fa ff ff       	call   401080 <fclose@plt>
  4015b8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4015bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015bf:	89 d6                	mov    %edx,%esi
  4015c1:	48 89 c7             	mov    %rax,%rdi
  4015c4:	e8 e3 05 00 00       	call   401bac <getbuf>
  4015c9:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4015cc:	8b 05 36 2b 00 00    	mov    0x2b36(%rip),%eax        # 404108 <cookie>
  4015d2:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4015d5:	75 1b                	jne    4015f2 <test+0xdd>
  4015d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015da:	89 c6                	mov    %eax,%esi
  4015dc:	48 8d 05 86 0c 00 00 	lea    0xc86(%rip),%rax        # 402269 <_IO_stdin_used+0x269>
  4015e3:	48 89 c7             	mov    %rax,%rdi
  4015e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4015eb:	e8 b0 fa ff ff       	call   4010a0 <printf@plt>
  4015f0:	eb 19                	jmp    40160b <test+0xf6>
  4015f2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015f5:	89 c6                	mov    %eax,%esi
  4015f7:	48 8d 05 88 0c 00 00 	lea    0xc88(%rip),%rax        # 402286 <_IO_stdin_used+0x286>
  4015fe:	48 89 c7             	mov    %rax,%rdi
  401601:	b8 00 00 00 00       	mov    $0x0,%eax
  401606:	e8 95 fa ff ff       	call   4010a0 <printf@plt>
  40160b:	c9                   	leave  
  40160c:	c3                   	ret    

000000000040160d <save_char>:
  40160d:	55                   	push   %rbp
  40160e:	48 89 e5             	mov    %rsp,%rbp
  401611:	89 f8                	mov    %edi,%eax
  401613:	88 45 fc             	mov    %al,-0x4(%rbp)
  401616:	8b 05 f4 2a 00 00    	mov    0x2af4(%rip),%eax        # 404110 <gets_cnt>
  40161c:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401621:	0f 8f 95 00 00 00    	jg     4016bc <save_char+0xaf>
  401627:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  40162b:	c0 f8 04             	sar    $0x4,%al
  40162e:	0f be c0             	movsbl %al,%eax
  401631:	83 e0 0f             	and    $0xf,%eax
  401634:	89 c6                	mov    %eax,%esi
  401636:	8b 15 d4 2a 00 00    	mov    0x2ad4(%rip),%edx        # 404110 <gets_cnt>
  40163c:	89 d0                	mov    %edx,%eax
  40163e:	01 c0                	add    %eax,%eax
  401640:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
  401643:	48 63 c6             	movslq %esi,%rax
  401646:	48 8d 15 73 2a 00 00 	lea    0x2a73(%rip),%rdx        # 4040c0 <trans_char>
  40164d:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
  401651:	48 63 c1             	movslq %ecx,%rax
  401654:	48 8d 0d c5 2a 00 00 	lea    0x2ac5(%rip),%rcx        # 404120 <gets_buf>
  40165b:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  40165e:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  401662:	83 e0 0f             	and    $0xf,%eax
  401665:	89 c6                	mov    %eax,%esi
  401667:	8b 15 a3 2a 00 00    	mov    0x2aa3(%rip),%edx        # 404110 <gets_cnt>
  40166d:	89 d0                	mov    %edx,%eax
  40166f:	01 c0                	add    %eax,%eax
  401671:	01 d0                	add    %edx,%eax
  401673:	8d 48 01             	lea    0x1(%rax),%ecx
  401676:	48 63 c6             	movslq %esi,%rax
  401679:	48 8d 15 40 2a 00 00 	lea    0x2a40(%rip),%rdx        # 4040c0 <trans_char>
  401680:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
  401684:	48 63 c1             	movslq %ecx,%rax
  401687:	48 8d 0d 92 2a 00 00 	lea    0x2a92(%rip),%rcx        # 404120 <gets_buf>
  40168e:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  401691:	8b 15 79 2a 00 00    	mov    0x2a79(%rip),%edx        # 404110 <gets_cnt>
  401697:	89 d0                	mov    %edx,%eax
  401699:	01 c0                	add    %eax,%eax
  40169b:	01 d0                	add    %edx,%eax
  40169d:	83 c0 02             	add    $0x2,%eax
  4016a0:	48 98                	cltq   
  4016a2:	48 8d 15 77 2a 00 00 	lea    0x2a77(%rip),%rdx        # 404120 <gets_buf>
  4016a9:	c6 04 10 20          	movb   $0x20,(%rax,%rdx,1)
  4016ad:	8b 05 5d 2a 00 00    	mov    0x2a5d(%rip),%eax        # 404110 <gets_cnt>
  4016b3:	83 c0 01             	add    $0x1,%eax
  4016b6:	89 05 54 2a 00 00    	mov    %eax,0x2a54(%rip)        # 404110 <gets_cnt>
  4016bc:	90                   	nop
  4016bd:	5d                   	pop    %rbp
  4016be:	c3                   	ret    

00000000004016bf <save_term>:
  4016bf:	55                   	push   %rbp
  4016c0:	48 89 e5             	mov    %rsp,%rbp
  4016c3:	8b 15 47 2a 00 00    	mov    0x2a47(%rip),%edx        # 404110 <gets_cnt>
  4016c9:	89 d0                	mov    %edx,%eax
  4016cb:	01 c0                	add    %eax,%eax
  4016cd:	01 d0                	add    %edx,%eax
  4016cf:	48 98                	cltq   
  4016d1:	48 8d 15 48 2a 00 00 	lea    0x2a48(%rip),%rdx        # 404120 <gets_buf>
  4016d8:	c6 04 10 00          	movb   $0x0,(%rax,%rdx,1)
  4016dc:	90                   	nop
  4016dd:	5d                   	pop    %rbp
  4016de:	c3                   	ret    

00000000004016df <Gets>:
  4016df:	55                   	push   %rbp
  4016e0:	48 89 e5             	mov    %rsp,%rbp
  4016e3:	48 83 ec 20          	sub    $0x20,%rsp
  4016e7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016eb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4016ef:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4016f2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4016f5:	48 63 d0             	movslq %eax,%rdx
  4016f8:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4016fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401700:	48 89 ce             	mov    %rcx,%rsi
  401703:	48 89 c7             	mov    %rax,%rdi
  401706:	e8 d5 f9 ff ff       	call   4010e0 <memcpy@plt>
  40170b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40170f:	c9                   	leave  
  401710:	c3                   	ret    

0000000000401711 <main>:
  401711:	55                   	push   %rbp
  401712:	48 89 e5             	mov    %rsp,%rbp
  401715:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  40171c:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
  401722:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  401729:	b8 00 00 00 00       	mov    $0x0,%eax
  40172e:	e8 94 fb ff ff       	call   4012c7 <version_info>
  401733:	83 bd 7c ff ff ff 03 	cmpl   $0x3,-0x84(%rbp)
  40173a:	7f 3a                	jg     401776 <main+0x65>
  40173c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  401743:	48 8b 00             	mov    (%rax),%rax
  401746:	48 89 c6             	mov    %rax,%rsi
  401749:	48 8d 05 58 0b 00 00 	lea    0xb58(%rip),%rax        # 4022a8 <_IO_stdin_used+0x2a8>
  401750:	48 89 c7             	mov    %rax,%rdi
  401753:	b8 00 00 00 00       	mov    $0x0,%eax
  401758:	e8 43 f9 ff ff       	call   4010a0 <printf@plt>
  40175d:	48 8d 05 74 0b 00 00 	lea    0xb74(%rip),%rax        # 4022d8 <_IO_stdin_used+0x2d8>
  401764:	48 89 c7             	mov    %rax,%rdi
  401767:	e8 04 f9 ff ff       	call   401070 <puts@plt>
  40176c:	b8 00 00 00 00       	mov    $0x0,%eax
  401771:	e9 4e 01 00 00       	jmp    4018c4 <main+0x1b3>
  401776:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  40177d:	48 83 c0 08          	add    $0x8,%rax
  401781:	48 8b 00             	mov    (%rax),%rax
  401784:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
  401788:	48 83 c2 64          	add    $0x64,%rdx
  40178c:	48 89 c6             	mov    %rax,%rsi
  40178f:	48 89 d7             	mov    %rdx,%rdi
  401792:	e8 b9 f8 ff ff       	call   401050 <strcpy@plt>
  401797:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  40179e:	48 83 c0 10          	add    $0x10,%rax
  4017a2:	48 8b 10             	mov    (%rax),%rdx
  4017a5:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4017a9:	48 89 d6             	mov    %rdx,%rsi
  4017ac:	48 89 c7             	mov    %rax,%rdi
  4017af:	e8 9c f8 ff ff       	call   401050 <strcpy@plt>
  4017b4:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  4017bb:	48 83 c0 18          	add    $0x18,%rax
  4017bf:	48 8b 00             	mov    (%rax),%rax
  4017c2:	48 89 c7             	mov    %rax,%rdi
  4017c5:	e8 66 f9 ff ff       	call   401130 <atoi@plt>
  4017ca:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017cd:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4017d1:	48 83 c0 64          	add    $0x64,%rax
  4017d5:	48 89 c6             	mov    %rax,%rsi
  4017d8:	48 8d 05 2d 0b 00 00 	lea    0xb2d(%rip),%rax        # 40230c <_IO_stdin_used+0x30c>
  4017df:	48 89 c7             	mov    %rax,%rdi
  4017e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e7:	e8 b4 f8 ff ff       	call   4010a0 <printf@plt>
  4017ec:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4017f0:	48 83 c0 64          	add    $0x64,%rax
  4017f4:	48 89 c7             	mov    %rax,%rdi
  4017f7:	e8 1e 04 00 00       	call   401c1a <gencookie>
  4017fc:	89 05 06 29 00 00    	mov    %eax,0x2906(%rip)        # 404108 <cookie>
  401802:	8b 05 00 29 00 00    	mov    0x2900(%rip),%eax        # 404108 <cookie>
  401808:	89 c6                	mov    %eax,%esi
  40180a:	48 8d 05 0a 0b 00 00 	lea    0xb0a(%rip),%rax        # 40231b <_IO_stdin_used+0x31b>
  401811:	48 89 c7             	mov    %rax,%rdi
  401814:	b8 00 00 00 00       	mov    $0x0,%eax
  401819:	e8 82 f8 ff ff       	call   4010a0 <printf@plt>
  40181e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  401822:	48 89 c6             	mov    %rax,%rsi
  401825:	48 8d 05 ff 0a 00 00 	lea    0xaff(%rip),%rax        # 40232b <_IO_stdin_used+0x32b>
  40182c:	48 89 c7             	mov    %rax,%rdi
  40182f:	b8 00 00 00 00       	mov    $0x0,%eax
  401834:	e8 67 f8 ff ff       	call   4010a0 <printf@plt>
  401839:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40183c:	89 c6                	mov    %eax,%esi
  40183e:	48 8d 05 fd 0a 00 00 	lea    0xafd(%rip),%rax        # 402342 <_IO_stdin_used+0x342>
  401845:	48 89 c7             	mov    %rax,%rdi
  401848:	b8 00 00 00 00       	mov    $0x0,%eax
  40184d:	e8 4e f8 ff ff       	call   4010a0 <printf@plt>
  401852:	48 8d 05 5d fc ff ff 	lea    -0x3a3(%rip),%rax        # 4014b6 <bang>
  401859:	48 89 c1             	mov    %rax,%rcx
  40185c:	48 8d 05 ff fb ff ff 	lea    -0x401(%rip),%rax        # 401462 <fizz>
  401863:	48 89 c2             	mov    %rax,%rdx
  401866:	48 8d 05 d8 fb ff ff 	lea    -0x428(%rip),%rax        # 401445 <smoke>
  40186d:	48 89 c6             	mov    %rax,%rsi
  401870:	48 8d 05 d9 0a 00 00 	lea    0xad9(%rip),%rax        # 402350 <_IO_stdin_used+0x350>
  401877:	48 89 c7             	mov    %rax,%rdi
  40187a:	b8 00 00 00 00       	mov    $0x0,%eax
  40187f:	e8 1c f8 ff ff       	call   4010a0 <printf@plt>
  401884:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  401888:	48 83 c0 64          	add    $0x64,%rax
  40188c:	48 89 c7             	mov    %rax,%rdi
  40188f:	e8 c3 fa ff ff       	call   401357 <initialize_bomb>
  401894:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  401898:	48 89 c7             	mov    %rax,%rdi
  40189b:	e8 75 fc ff ff       	call   401515 <test>
  4018a0:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4018a4:	48 83 c0 64          	add    $0x64,%rax
  4018a8:	48 89 c6             	mov    %rax,%rsi
  4018ab:	48 8d 05 c8 0a 00 00 	lea    0xac8(%rip),%rax        # 40237a <_IO_stdin_used+0x37a>
  4018b2:	48 89 c7             	mov    %rax,%rdi
  4018b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ba:	e8 e1 f7 ff ff       	call   4010a0 <printf@plt>
  4018bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c4:	c9                   	leave  
  4018c5:	c3                   	ret    

00000000004018c6 <convert_to_hex_value>:
  4018c6:	55                   	push   %rbp
  4018c7:	48 89 e5             	mov    %rsp,%rbp
  4018ca:	48 83 ec 20          	sub    $0x20,%rsp
  4018ce:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4018d2:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  4018d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018da:	48 8d 0d a7 0a 00 00 	lea    0xaa7(%rip),%rcx        # 402388 <_IO_stdin_used+0x388>
  4018e1:	48 89 ce             	mov    %rcx,%rsi
  4018e4:	48 89 c7             	mov    %rax,%rdi
  4018e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ec:	e8 0f f8 ff ff       	call   401100 <__isoc99_sscanf@plt>
  4018f1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4018f4:	c9                   	leave  
  4018f5:	c3                   	ret    

00000000004018f6 <convert_to_byte_string>:
  4018f6:	55                   	push   %rbp
  4018f7:	48 89 e5             	mov    %rsp,%rbp
  4018fa:	53                   	push   %rbx
  4018fb:	48 83 ec 58          	sub    $0x58,%rsp
  4018ff:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  401903:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  401907:	48 89 e0             	mov    %rsp,%rax
  40190a:	48 89 c3             	mov    %rax,%rbx
  40190d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401914:	c7 45 d4 00 10 00 00 	movl   $0x1000,-0x2c(%rbp)
  40191b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40191e:	48 63 d0             	movslq %eax,%rdx
  401921:	48 83 ea 01          	sub    $0x1,%rdx
  401925:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  401929:	48 63 d0             	movslq %eax,%rdx
  40192c:	49 89 d2             	mov    %rdx,%r10
  40192f:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  401935:	48 63 d0             	movslq %eax,%rdx
  401938:	49 89 d0             	mov    %rdx,%r8
  40193b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401941:	48 98                	cltq   
  401943:	ba 10 00 00 00       	mov    $0x10,%edx
  401948:	48 83 ea 01          	sub    $0x1,%rdx
  40194c:	48 01 d0             	add    %rdx,%rax
  40194f:	be 10 00 00 00       	mov    $0x10,%esi
  401954:	ba 00 00 00 00       	mov    $0x0,%edx
  401959:	48 f7 f6             	div    %rsi
  40195c:	48 6b c0 10          	imul   $0x10,%rax,%rax
  401960:	48 89 c1             	mov    %rax,%rcx
  401963:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
  40196a:	48 89 e2             	mov    %rsp,%rdx
  40196d:	48 29 ca             	sub    %rcx,%rdx
  401970:	48 39 d4             	cmp    %rdx,%rsp
  401973:	74 12                	je     401987 <convert_to_byte_string+0x91>
  401975:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40197c:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  401983:	00 00 
  401985:	eb e9                	jmp    401970 <convert_to_byte_string+0x7a>
  401987:	48 89 c2             	mov    %rax,%rdx
  40198a:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  401990:	48 29 d4             	sub    %rdx,%rsp
  401993:	48 89 c2             	mov    %rax,%rdx
  401996:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  40199c:	48 85 d2             	test   %rdx,%rdx
  40199f:	74 10                	je     4019b1 <convert_to_byte_string+0xbb>
  4019a1:	25 ff 0f 00 00       	and    $0xfff,%eax
  4019a6:	48 83 e8 08          	sub    $0x8,%rax
  4019aa:	48 01 e0             	add    %rsp,%rax
  4019ad:	48 83 08 00          	orq    $0x0,(%rax)
  4019b1:	48 89 e0             	mov    %rsp,%rax
  4019b4:	48 83 c0 00          	add    $0x0,%rax
  4019b8:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4019bc:	c7 45 e8 00 04 00 00 	movl   $0x400,-0x18(%rbp)
  4019c3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4019ca:	bf 00 04 00 00       	mov    $0x400,%edi
  4019cf:	e8 1c f7 ff ff       	call   4010f0 <malloc@plt>
  4019d4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4019d8:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  4019dd:	0f 85 8c 01 00 00    	jne    401b6f <convert_to_byte_string+0x279>
  4019e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e8:	e9 b6 01 00 00       	jmp    401ba3 <convert_to_byte_string+0x2ad>
  4019ed:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4019f1:	48 8d 15 93 09 00 00 	lea    0x993(%rip),%rdx        # 40238b <_IO_stdin_used+0x38b>
  4019f8:	48 89 d6             	mov    %rdx,%rsi
  4019fb:	48 89 c7             	mov    %rax,%rdi
  4019fe:	e8 bd f6 ff ff       	call   4010c0 <strcmp@plt>
  401a03:	85 c0                	test   %eax,%eax
  401a05:	75 09                	jne    401a10 <convert_to_byte_string+0x11a>
  401a07:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  401a0b:	e9 5f 01 00 00       	jmp    401b6f <convert_to_byte_string+0x279>
  401a10:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401a14:	48 8d 15 73 09 00 00 	lea    0x973(%rip),%rdx        # 40238e <_IO_stdin_used+0x38e>
  401a1b:	48 89 d6             	mov    %rdx,%rsi
  401a1e:	48 89 c7             	mov    %rax,%rdi
  401a21:	e8 9a f6 ff ff       	call   4010c0 <strcmp@plt>
  401a26:	85 c0                	test   %eax,%eax
  401a28:	75 4a                	jne    401a74 <convert_to_byte_string+0x17e>
  401a2a:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  401a2e:	7f 3b                	jg     401a6b <convert_to_byte_string+0x175>
  401a30:	48 8b 05 a9 26 00 00 	mov    0x26a9(%rip),%rax        # 4040e0 <stderr@GLIBC_2.2.5>
  401a37:	48 8d 15 50 09 00 00 	lea    0x950(%rip),%rdx        # 40238e <_IO_stdin_used+0x38e>
  401a3e:	48 8d 0d 4c 09 00 00 	lea    0x94c(%rip),%rcx        # 402391 <_IO_stdin_used+0x391>
  401a45:	48 89 ce             	mov    %rcx,%rsi
  401a48:	48 89 c7             	mov    %rax,%rdi
  401a4b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a50:	e8 7b f6 ff ff       	call   4010d0 <fprintf@plt>
  401a55:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a59:	48 89 c7             	mov    %rax,%rdi
  401a5c:	e8 cf f5 ff ff       	call   401030 <free@plt>
  401a61:	b8 00 00 00 00       	mov    $0x0,%eax
  401a66:	e9 38 01 00 00       	jmp    401ba3 <convert_to_byte_string+0x2ad>
  401a6b:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
  401a6f:	e9 fb 00 00 00       	jmp    401b6f <convert_to_byte_string+0x279>
  401a74:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  401a78:	0f 85 f1 00 00 00    	jne    401b6f <convert_to_byte_string+0x279>
  401a7e:	e8 cd f6 ff ff       	call   401150 <__ctype_b_loc@plt>
  401a83:	48 8b 10             	mov    (%rax),%rdx
  401a86:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401a8a:	0f b6 00             	movzbl (%rax),%eax
  401a8d:	48 0f be c0          	movsbq %al,%rax
  401a91:	48 01 c0             	add    %rax,%rax
  401a94:	48 01 d0             	add    %rdx,%rax
  401a97:	0f b7 00             	movzwl (%rax),%eax
  401a9a:	0f b7 c0             	movzwl %ax,%eax
  401a9d:	25 00 10 00 00       	and    $0x1000,%eax
  401aa2:	85 c0                	test   %eax,%eax
  401aa4:	74 35                	je     401adb <convert_to_byte_string+0x1e5>
  401aa6:	e8 a5 f6 ff ff       	call   401150 <__ctype_b_loc@plt>
  401aab:	48 8b 10             	mov    (%rax),%rdx
  401aae:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401ab2:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  401ab6:	48 0f be c0          	movsbq %al,%rax
  401aba:	48 01 c0             	add    %rax,%rax
  401abd:	48 01 d0             	add    %rdx,%rax
  401ac0:	0f b7 00             	movzwl (%rax),%eax
  401ac3:	0f b7 c0             	movzwl %ax,%eax
  401ac6:	25 00 10 00 00       	and    $0x1000,%eax
  401acb:	85 c0                	test   %eax,%eax
  401acd:	74 0c                	je     401adb <convert_to_byte_string+0x1e5>
  401acf:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401ad3:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  401ad7:	84 c0                	test   %al,%al
  401ad9:	74 38                	je     401b13 <convert_to_byte_string+0x21d>
  401adb:	48 8b 05 fe 25 00 00 	mov    0x25fe(%rip),%rax        # 4040e0 <stderr@GLIBC_2.2.5>
  401ae2:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401ae6:	48 8d 0d c3 08 00 00 	lea    0x8c3(%rip),%rcx        # 4023b0 <_IO_stdin_used+0x3b0>
  401aed:	48 89 ce             	mov    %rcx,%rsi
  401af0:	48 89 c7             	mov    %rax,%rdi
  401af3:	b8 00 00 00 00       	mov    $0x0,%eax
  401af8:	e8 d3 f5 ff ff       	call   4010d0 <fprintf@plt>
  401afd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b01:	48 89 c7             	mov    %rax,%rdi
  401b04:	e8 27 f5 ff ff       	call   401030 <free@plt>
  401b09:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0e:	e9 90 00 00 00       	jmp    401ba3 <convert_to_byte_string+0x2ad>
  401b13:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401b17:	48 89 c7             	mov    %rax,%rdi
  401b1a:	e8 a7 fd ff ff       	call   4018c6 <convert_to_hex_value>
  401b1f:	88 45 bf             	mov    %al,-0x41(%rbp)
  401b22:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401b25:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  401b28:	75 2c                	jne    401b56 <convert_to_byte_string+0x260>
  401b2a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401b2d:	01 c0                	add    %eax,%eax
  401b2f:	48 63 d0             	movslq %eax,%rdx
  401b32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b36:	48 89 d6             	mov    %rdx,%rsi
  401b39:	48 89 c7             	mov    %rax,%rdi
  401b3c:	e8 cf f5 ff ff       	call   401110 <realloc@plt>
  401b41:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401b45:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401b4a:	75 07                	jne    401b53 <convert_to_byte_string+0x25d>
  401b4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b51:	eb 50                	jmp    401ba3 <convert_to_byte_string+0x2ad>
  401b53:	d1 65 e8             	shll   -0x18(%rbp)
  401b56:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401b59:	8d 50 01             	lea    0x1(%rax),%edx
  401b5c:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  401b5f:	48 63 d0             	movslq %eax,%rdx
  401b62:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b66:	48 01 c2             	add    %rax,%rdx
  401b69:	0f b6 45 bf          	movzbl -0x41(%rbp),%eax
  401b6d:	88 02                	mov    %al,(%rdx)
  401b6f:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401b73:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401b77:	48 8d 0d 8f 08 00 00 	lea    0x88f(%rip),%rcx        # 40240d <_IO_stdin_used+0x40d>
  401b7e:	48 89 ce             	mov    %rcx,%rsi
  401b81:	48 89 c7             	mov    %rax,%rdi
  401b84:	b8 00 00 00 00       	mov    $0x0,%eax
  401b89:	e8 d2 f4 ff ff       	call   401060 <__isoc99_fscanf@plt>
  401b8e:	85 c0                	test   %eax,%eax
  401b90:	0f 8f 57 fe ff ff    	jg     4019ed <convert_to_byte_string+0xf7>
  401b96:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401b9a:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401b9d:	89 10                	mov    %edx,(%rax)
  401b9f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ba3:	48 89 dc             	mov    %rbx,%rsp
  401ba6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401baa:	c9                   	leave  
  401bab:	c3                   	ret    

0000000000401bac <getbuf>:
  401bac:	55                   	push   %rbp
  401bad:	48 89 e5             	mov    %rsp,%rbp
  401bb0:	48 83 ec 60          	sub    $0x60,%rsp
  401bb4:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  401bb8:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  401bbb:	48 b8 54 68 65 20 66 	movabs $0x7574756620656854,%rax
  401bc2:	75 74 75 
  401bc5:	48 ba 72 65 20 77 69 	movabs $0x206c6c6977206572,%rdx
  401bcc:	6c 6c 20 
  401bcf:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401bd3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401bd7:	48 b8 62 65 20 62 65 	movabs $0x6574746562206562,%rax
  401bde:	74 74 65 
  401be1:	48 ba 72 20 74 6f 6d 	movabs $0x72726f6d6f742072,%rdx
  401be8:	6f 72 72 
  401beb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401bef:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401bf3:	66 c7 45 f0 6f 77    	movw   $0x776f,-0x10(%rbp)
  401bf9:	c6 45 f2 00          	movb   $0x0,-0xe(%rbp)
  401bfd:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  401c00:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  401c04:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401c08:	48 89 ce             	mov    %rcx,%rsi
  401c0b:	48 89 c7             	mov    %rax,%rdi
  401c0e:	e8 cc fa ff ff       	call   4016df <Gets>
  401c13:	b8 01 00 00 00       	mov    $0x1,%eax
  401c18:	c9                   	leave  
  401c19:	c3                   	ret    

0000000000401c1a <gencookie>:
  401c1a:	55                   	push   %rbp
  401c1b:	48 89 e5             	mov    %rsp,%rbp
  401c1e:	48 83 ec 20          	sub    $0x20,%rsp
  401c22:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401c26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c2a:	48 89 c7             	mov    %rax,%rdi
  401c2d:	e8 5e f4 ff ff       	call   401090 <strlen@plt>
  401c32:	48 83 f8 0a          	cmp    $0xa,%rax
  401c36:	74 19                	je     401c51 <gencookie+0x37>
  401c38:	48 8d 05 d1 07 00 00 	lea    0x7d1(%rip),%rax        # 402410 <_IO_stdin_used+0x410>
  401c3f:	48 89 c7             	mov    %rax,%rdi
  401c42:	e8 29 f4 ff ff       	call   401070 <puts@plt>
  401c47:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4c:	e9 8d 00 00 00       	jmp    401cde <gencookie+0xc4>
  401c51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c55:	0f b6 00             	movzbl (%rax),%eax
  401c58:	3c 55                	cmp    $0x55,%al
  401c5a:	74 21                	je     401c7d <gencookie+0x63>
  401c5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c60:	0f b6 00             	movzbl (%rax),%eax
  401c63:	3c 75                	cmp    $0x75,%al
  401c65:	74 16                	je     401c7d <gencookie+0x63>
  401c67:	48 8d 05 c1 07 00 00 	lea    0x7c1(%rip),%rax        # 40242f <_IO_stdin_used+0x42f>
  401c6e:	48 89 c7             	mov    %rax,%rdi
  401c71:	e8 fa f3 ff ff       	call   401070 <puts@plt>
  401c76:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7b:	eb 61                	jmp    401cde <gencookie+0xc4>
  401c7d:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  401c84:	eb 42                	jmp    401cc8 <gencookie+0xae>
  401c86:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401c89:	48 63 d0             	movslq %eax,%rdx
  401c8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c90:	48 01 d0             	add    %rdx,%rax
  401c93:	0f b6 00             	movzbl (%rax),%eax
  401c96:	3c 2f                	cmp    $0x2f,%al
  401c98:	7e 14                	jle    401cae <gencookie+0x94>
  401c9a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401c9d:	48 63 d0             	movslq %eax,%rdx
  401ca0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ca4:	48 01 d0             	add    %rdx,%rax
  401ca7:	0f b6 00             	movzbl (%rax),%eax
  401caa:	3c 39                	cmp    $0x39,%al
  401cac:	7e 16                	jle    401cc4 <gencookie+0xaa>
  401cae:	48 8d 05 95 07 00 00 	lea    0x795(%rip),%rax        # 40244a <_IO_stdin_used+0x44a>
  401cb5:	48 89 c7             	mov    %rax,%rdi
  401cb8:	e8 b3 f3 ff ff       	call   401070 <puts@plt>
  401cbd:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc2:	eb 1a                	jmp    401cde <gencookie+0xc4>
  401cc4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401cc8:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  401ccc:	7e b8                	jle    401c86 <gencookie+0x6c>
  401cce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401cd2:	48 83 c0 01          	add    $0x1,%rax
  401cd6:	48 89 c7             	mov    %rax,%rdi
  401cd9:	e8 52 f4 ff ff       	call   401130 <atoi@plt>
  401cde:	c9                   	leave  
  401cdf:	c3                   	ret    

Disassembly of section .fini:

0000000000401ce0 <_fini>:
  401ce0:	f3 0f 1e fa          	endbr64 
  401ce4:	48 83 ec 08          	sub    $0x8,%rsp
  401ce8:	48 83 c4 08          	add    $0x8,%rsp
  401cec:	c3                   	ret    
