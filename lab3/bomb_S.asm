
bomb:     file format elf64-x86-64


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
    1020:	ff 35 4a 2f 00 00    	push   0x2f4a(%rip)        # 3f70 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 4b 2f 00 00 	bnd jmp *0x2f4b(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop

Disassembly of section .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010f0 <getenv@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 85 2e 00 00 	bnd jmp *0x2e85(%rip)        # 3f80 <getenv@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <strcpy@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 7d 2e 00 00 	bnd jmp *0x2e7d(%rip)        # 3f88 <strcpy@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <puts@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 75 2e 00 00 	bnd jmp *0x2e75(%rip)        # 3f90 <puts@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <strlen@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 6d 2e 00 00 	bnd jmp *0x2e6d(%rip)        # 3f98 <strlen@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 65 2e 00 00 	bnd jmp *0x2e65(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <printf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 5d 2e 00 00 	bnd jmp *0x2e5d(%rip)        # 3fa8 <printf@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <fgets@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 55 2e 00 00 	bnd jmp *0x2e55(%rip)        # 3fb0 <fgets@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <__isoc99_sscanf@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 4d 2e 00 00 	bnd jmp *0x2e4d(%rip)        # 3fb8 <__isoc99_sscanf@GLIBC_2.7>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <fopen@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 45 2e 00 00 	bnd jmp *0x2e45(%rip)        # 3fc0 <fopen@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <exit@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 3d 2e 00 00 	bnd jmp *0x2e3d(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <__ctype_b_loc@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 35 2e 00 00 	bnd jmp *0x2e35(%rip)        # 3fd0 <__ctype_b_loc@GLIBC_2.3>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011a0 <_start>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	31 ed                	xor    %ebp,%ebp
    11a6:	49 89 d1             	mov    %rdx,%r9
    11a9:	5e                   	pop    %rsi
    11aa:	48 89 e2             	mov    %rsp,%rdx
    11ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11b1:	50                   	push   %rax
    11b2:	54                   	push   %rsp
    11b3:	45 31 c0             	xor    %r8d,%r8d
    11b6:	31 c9                	xor    %ecx,%ecx
    11b8:	48 8d 3d d2 01 00 00 	lea    0x1d2(%rip),%rdi        # 1391 <main>
    11bf:	ff 15 13 2e 00 00    	call   *0x2e13(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    11c5:	f4                   	hlt    
    11c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11cd:	00 00 00 

00000000000011d0 <deregister_tm_clones>:
    11d0:	48 8d 3d 91 32 00 00 	lea    0x3291(%rip),%rdi        # 4468 <__TMC_END__>
    11d7:	48 8d 05 8a 32 00 00 	lea    0x328a(%rip),%rax        # 4468 <__TMC_END__>
    11de:	48 39 f8             	cmp    %rdi,%rax
    11e1:	74 15                	je     11f8 <deregister_tm_clones+0x28>
    11e3:	48 8b 05 f6 2d 00 00 	mov    0x2df6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    11ea:	48 85 c0             	test   %rax,%rax
    11ed:	74 09                	je     11f8 <deregister_tm_clones+0x28>
    11ef:	ff e0                	jmp    *%rax
    11f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <register_tm_clones>:
    1200:	48 8d 3d 61 32 00 00 	lea    0x3261(%rip),%rdi        # 4468 <__TMC_END__>
    1207:	48 8d 35 5a 32 00 00 	lea    0x325a(%rip),%rsi        # 4468 <__TMC_END__>
    120e:	48 29 fe             	sub    %rdi,%rsi
    1211:	48 89 f0             	mov    %rsi,%rax
    1214:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1218:	48 c1 f8 03          	sar    $0x3,%rax
    121c:	48 01 c6             	add    %rax,%rsi
    121f:	48 d1 fe             	sar    %rsi
    1222:	74 14                	je     1238 <register_tm_clones+0x38>
    1224:	48 8b 05 c5 2d 00 00 	mov    0x2dc5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    122b:	48 85 c0             	test   %rax,%rax
    122e:	74 08                	je     1238 <register_tm_clones+0x38>
    1230:	ff e0                	jmp    *%rax
    1232:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1238:	c3                   	ret    
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <__do_global_dtors_aux>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	80 3d 3d 32 00 00 00 	cmpb   $0x0,0x323d(%rip)        # 4488 <completed.0>
    124b:	75 2b                	jne    1278 <__do_global_dtors_aux+0x38>
    124d:	55                   	push   %rbp
    124e:	48 83 3d a2 2d 00 00 	cmpq   $0x0,0x2da2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1255:	00 
    1256:	48 89 e5             	mov    %rsp,%rbp
    1259:	74 0c                	je     1267 <__do_global_dtors_aux+0x27>
    125b:	48 8b 3d a6 2d 00 00 	mov    0x2da6(%rip),%rdi        # 4008 <__dso_handle>
    1262:	e8 79 fe ff ff       	call   10e0 <__cxa_finalize@plt>
    1267:	e8 64 ff ff ff       	call   11d0 <deregister_tm_clones>
    126c:	c6 05 15 32 00 00 01 	movb   $0x1,0x3215(%rip)        # 4488 <completed.0>
    1273:	5d                   	pop    %rbp
    1274:	c3                   	ret    
    1275:	0f 1f 00             	nopl   (%rax)
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <frame_dummy>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	e9 77 ff ff ff       	jmp    1200 <register_tm_clones>

0000000000001289 <initialize_bomb>:

FILE *infile;

char  studentid[11];
void    initialize_bomb(char *userid) 
{
    1289:	f3 0f 1e fa          	endbr64 
    128d:	55                   	push   %rbp
    128e:	48 89 e5             	mov    %rsp,%rbp
    1291:	48 83 ec 30          	sub    $0x30,%rsp
    1295:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   int len;
   int x=1,y=2,z=3,u=4,v=5,w=6;
    1299:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
    12a0:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    12a7:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    12ae:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%rbp)
    12b5:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%rbp)
    12bc:	c7 45 f8 06 00 00 00 	movl   $0x6,-0x8(%rbp)
   len =strlen(userid);
    12c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12c7:	48 89 c7             	mov    %rax,%rdi
    12ca:	e8 51 fe ff ff       	call   1120 <strlen@plt>
    12cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
   if (len !=10)  {
    12d2:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
    12d6:	74 19                	je     12f1 <initialize_bomb+0x68>
       printf("The student number has 10 characters, such as U202315001 \n");
    12d8:	48 8d 05 29 0d 00 00 	lea    0xd29(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12df:	48 89 c7             	mov    %rax,%rdi
    12e2:	e8 29 fe ff ff       	call   1110 <puts@plt>
       exit(0);
    12e7:	bf 00 00 00 00       	mov    $0x0,%edi
    12ec:	e8 8f fe ff ff       	call   1180 <exit@plt>
   }
   strcpy(studentid, userid);
    12f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12f5:	48 89 c6             	mov    %rax,%rsi
    12f8:	48 8d 05 99 31 00 00 	lea    0x3199(%rip),%rax        # 4498 <studentid>
    12ff:	48 89 c7             	mov    %rax,%rdi
    1302:	e8 f9 fd ff ff       	call   1100 <strcpy@plt>
   printf("welcome  %s \n",userid);
    1307:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    130b:	48 89 c6             	mov    %rax,%rsi
    130e:	48 8d 05 2d 0d 00 00 	lea    0xd2d(%rip),%rax        # 2042 <_IO_stdin_used+0x42>
    1315:	48 89 c7             	mov    %rax,%rdi
    1318:	b8 00 00 00 00       	mov    $0x0,%eax
    131d:	e8 1e fe ff ff       	call   1140 <printf@plt>
      if (userid[len-1]=='1')   {
            w = 2*x+3*y;   return;
      }
   #endif

   //w=24
    1322:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1325:	48 98                	cltq   
    1327:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    132b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    132f:	48 01 d0             	add    %rdx,%rax
    1332:	0f b6 00             	movzbl (%rax),%eax
    1335:	3c 32                	cmp    $0x32,%al
    1337:	75 1f                	jne    1358 <initialize_bomb+0xcf>
   #ifdef U2
    1339:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    133c:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
    133f:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1342:	89 d0                	mov    %edx,%eax
    1344:	01 c0                	add    %eax,%eax
    1346:	01 d0                	add    %edx,%eax
    1348:	8d 14 01             	lea    (%rcx,%rax,1),%edx
    134b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    134e:	c1 e0 02             	shl    $0x2,%eax
    1351:	01 d0                	add    %edx,%eax
    1353:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1356:	eb 37                	jmp    138f <initialize_bomb+0x106>
      }
   #endif
   #ifdef U9
      if (userid[len-1]=='9')   {
          x=4*w+5*y;   return;
      }
    1358:	48 8d 05 f1 0c 00 00 	lea    0xcf1(%rip),%rax        # 2050 <_IO_stdin_used+0x50>
    135f:	48 89 c7             	mov    %rax,%rdi
    1362:	e8 a9 fd ff ff       	call   1110 <puts@plt>
   #endif
    1367:	48 8d 05 1a 0d 00 00 	lea    0xd1a(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    136e:	48 89 c7             	mov    %rax,%rdi
    1371:	e8 9a fd ff ff       	call   1110 <puts@plt>
   printf(" gcc  -g -o binarybomb -D U* bomb.c  support.c  phase.o\n");
    1376:	48 8d 05 43 0d 00 00 	lea    0xd43(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    137d:	48 89 c7             	mov    %rax,%rdi
    1380:	e8 8b fd ff ff       	call   1110 <puts@plt>
   printf(" U* : * is the last number of your Student Id . \n");
    1385:	bf 00 00 00 00       	mov    $0x0,%edi
    138a:	e8 f1 fd ff ff       	call   1180 <exit@plt>
    printf(" example :  U202315001  ->   -D U1 . \n"); 
    138f:	c9                   	leave  
    1390:	c3                   	ret    

0000000000001391 <main>:
   exit(0);
}

    1391:	f3 0f 1e fa          	endbr64 
    1395:	55                   	push   %rbp
    1396:	48 89 e5             	mov    %rsp,%rbp
    1399:	48 83 ec 20          	sub    $0x20,%rsp
    139d:	89 7d ec             	mov    %edi,-0x14(%rbp)
    13a0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
int main(int argc, char *argv[])
{
    13a4:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    13a8:	75 13                	jne    13bd <main+0x2c>
    char *input, *userid;
    13aa:	48 8b 05 cf 30 00 00 	mov    0x30cf(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    13b1:	48 89 05 d8 30 00 00 	mov    %rax,0x30d8(%rip)        # 4490 <infile>
    13b8:	e9 91 00 00 00       	jmp    144e <main+0xbd>
    if (argc == 1)   
    13bd:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    13c1:	75 63                	jne    1426 <main+0x95>
	infile = stdin;
    13c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13c7:	48 83 c0 08          	add    $0x8,%rax
    13cb:	48 8b 00             	mov    (%rax),%rax
    13ce:	48 8d 15 11 0d 00 00 	lea    0xd11(%rip),%rdx        # 20e6 <_IO_stdin_used+0xe6>
    13d5:	48 89 d6             	mov    %rdx,%rsi
    13d8:	48 89 c7             	mov    %rax,%rdi
    13db:	e8 90 fd ff ff       	call   1170 <fopen@plt>
    13e0:	48 89 05 a9 30 00 00 	mov    %rax,0x30a9(%rip)        # 4490 <infile>
    else if (argc == 2) {
    13e7:	48 8b 05 a2 30 00 00 	mov    0x30a2(%rip),%rax        # 4490 <infile>
    13ee:	48 85 c0             	test   %rax,%rax
    13f1:	75 5b                	jne    144e <main+0xbd>
                infile = fopen(argv[1], "r");
    13f3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13f7:	48 83 c0 08          	add    $0x8,%rax
    13fb:	48 8b 10             	mov    (%rax),%rdx
    13fe:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1402:	48 8b 00             	mov    (%rax),%rax
    1405:	48 89 c6             	mov    %rax,%rsi
    1408:	48 8d 05 d9 0c 00 00 	lea    0xcd9(%rip),%rax        # 20e8 <_IO_stdin_used+0xe8>
    140f:	48 89 c7             	mov    %rax,%rdi
    1412:	b8 00 00 00 00       	mov    $0x0,%eax
    1417:	e8 24 fd ff ff       	call   1140 <printf@plt>
	if (!infile) {
    141c:	bf 08 00 00 00       	mov    $0x8,%edi
    1421:	e8 5a fd ff ff       	call   1180 <exit@plt>
	    printf("%s: Error: Couldn't open %s\n", argv[0], argv[1]);
	    exit(8);
	}
    }
    1426:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    142a:	48 8b 00             	mov    (%rax),%rax
    142d:	48 89 c6             	mov    %rax,%rsi
    1430:	48 8d 05 ce 0c 00 00 	lea    0xcce(%rip),%rax        # 2105 <_IO_stdin_used+0x105>
    1437:	48 89 c7             	mov    %rax,%rdi
    143a:	b8 00 00 00 00       	mov    $0x0,%eax
    143f:	e8 fc fc ff ff       	call   1140 <printf@plt>
    else {
    1444:	bf 08 00 00 00       	mov    $0x8,%edi
    1449:	e8 32 fd ff ff       	call   1180 <exit@plt>
	printf("Usage: %s [<input_file>]\n", argv[0]);
	exit(8);
    }
    144e:	48 8d 05 ca 0c 00 00 	lea    0xcca(%rip),%rax        # 211f <_IO_stdin_used+0x11f>
    1455:	48 89 c7             	mov    %rax,%rdi
    1458:	e8 b3 fc ff ff       	call   1110 <puts@plt>

    145d:	e8 83 03 00 00       	call   17e5 <read_line>
    1462:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    printf("Input your Student ID : \n");
    1466:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    146a:	48 89 c7             	mov    %rax,%rdi
    146d:	e8 17 fe ff ff       	call   1289 <initialize_bomb>
    userid = read_line();
    initialize_bomb(userid);
    1472:	48 8d 05 bf 0c 00 00 	lea    0xcbf(%rip),%rax        # 2138 <_IO_stdin_used+0x138>
    1479:	48 89 c7             	mov    %rax,%rdi
    147c:	e8 8f fc ff ff       	call   1110 <puts@plt>

    printf("You have 6 bombs to defuse! \n");
    1481:	48 8d 05 d0 0c 00 00 	lea    0xcd0(%rip),%rax        # 2158 <_IO_stdin_used+0x158>
    1488:	48 89 c7             	mov    %rax,%rdi
    148b:	e8 80 fc ff ff       	call   1110 <puts@plt>

    1490:	e8 50 03 00 00       	call   17e5 <read_line>
    1495:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    printf("Gate 1 :  input a string that meets the requirements. \n");
    1499:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    149d:	48 89 c7             	mov    %rax,%rdi
    14a0:	e8 f4 04 00 00       	call   1999 <phase_1>
    input = read_line();             /* 输入一行信息                   */
    14a5:	48 8d 05 e3 0c 00 00 	lea    0xce3(%rip),%rax        # 218f <_IO_stdin_used+0x18f>
    14ac:	48 89 c7             	mov    %rax,%rdi
    14af:	e8 5c fc ff ff       	call   1110 <puts@plt>
    phase_1(input);                   /* 若一关炸弹拆除失败，会报错  */
    printf("Phase 1 passed! \n");
    14b4:	48 8d 05 e5 0c 00 00 	lea    0xce5(%rip),%rax        # 21a0 <_IO_stdin_used+0x1a0>
    14bb:	48 89 c7             	mov    %rax,%rdi
    14be:	e8 4d fc ff ff       	call   1110 <puts@plt>

    14c3:	e8 1d 03 00 00       	call   17e5 <read_line>
    14c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    printf("Gate 2 :  input six intergers that meets the requirements. \n");
    14cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14d0:	48 89 c7             	mov    %rax,%rdi
    14d3:	e8 25 05 00 00       	call   19fd <phase_2>
    input = read_line();
    14d8:	48 8d 05 fd 0c 00 00 	lea    0xcfd(%rip),%rax        # 21dc <_IO_stdin_used+0x1dc>
    14df:	48 89 c7             	mov    %rax,%rdi
    14e2:	e8 29 fc ff ff       	call   1110 <puts@plt>
    phase_2(input);
    printf("Phase 2 passed! \n");
    14e7:	48 8d 05 ff 0c 00 00 	lea    0xcff(%rip),%rax        # 21ed <_IO_stdin_used+0x1ed>
    14ee:	48 89 c7             	mov    %rax,%rdi
    14f1:	e8 1a fc ff ff       	call   1110 <puts@plt>

    14f6:	e8 ea 02 00 00       	call   17e5 <read_line>
    14fb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    printf("Gate 3 :  input 2 intergers. \n");
    14ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	e8 bb 05 00 00       	call   1ac6 <phase_3>
    input = read_line();
    150b:	48 8d 05 f9 0c 00 00 	lea    0xcf9(%rip),%rax        # 220b <_IO_stdin_used+0x20b>
    1512:	48 89 c7             	mov    %rax,%rdi
    1515:	e8 f6 fb ff ff       	call   1110 <puts@plt>
    phase_3(input);
    printf("Phase 3 passed! \n");
    151a:	48 8d 05 ff 0c 00 00 	lea    0xcff(%rip),%rax        # 2220 <_IO_stdin_used+0x220>
    1521:	48 89 c7             	mov    %rax,%rdi
    1524:	e8 e7 fb ff ff       	call   1110 <puts@plt>

    1529:	e8 b7 02 00 00       	call   17e5 <read_line>
    152e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    printf("Gate 4 :  input 2 intergers and a string. \n");
    1532:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1536:	48 89 c7             	mov    %rax,%rdi
    1539:	e8 24 07 00 00       	call   1c62 <phase_4>
    input = read_line();
    153e:	48 8d 05 06 0d 00 00 	lea    0xd06(%rip),%rax        # 224b <_IO_stdin_used+0x24b>
    1545:	48 89 c7             	mov    %rax,%rdi
    1548:	e8 c3 fb ff ff       	call   1110 <puts@plt>
    phase_4(input);
    printf("Phase 4 passed! \n");
    154d:	48 8d 05 08 0d 00 00 	lea    0xd08(%rip),%rax        # 225c <_IO_stdin_used+0x25c>
    1554:	48 89 c7             	mov    %rax,%rdi
    1557:	e8 b4 fb ff ff       	call   1110 <puts@plt>
    
    155c:	e8 84 02 00 00       	call   17e5 <read_line>
    1561:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   printf("Gate 5 :  input  a string. \n");
    1565:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1569:	48 89 c7             	mov    %rax,%rdi
    156c:	e8 97 07 00 00       	call   1d08 <phase_5>
    input = read_line();
    1571:	48 8d 05 00 0d 00 00 	lea    0xd00(%rip),%rax        # 2278 <_IO_stdin_used+0x278>
    1578:	48 89 c7             	mov    %rax,%rdi
    157b:	e8 90 fb ff ff       	call   1110 <puts@plt>
    phase_5(input);
    printf("Phase 5 passed! \n");
    1580:	48 8d 05 02 0d 00 00 	lea    0xd02(%rip),%rax        # 2289 <_IO_stdin_used+0x289>
    1587:	48 89 c7             	mov    %rax,%rdi
    158a:	e8 81 fb ff ff       	call   1110 <puts@plt>

    158f:	e8 51 02 00 00       	call   17e5 <read_line>
    1594:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   printf("Gate 6 :  input 6 intergers. \n");
    1598:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    159c:	48 89 c7             	mov    %rax,%rdi
    159f:	e8 16 08 00 00       	call   1dba <phase_6>
    input = read_line();
    15a4:	48 8d 05 fc 0c 00 00 	lea    0xcfc(%rip),%rax        # 22a7 <_IO_stdin_used+0x2a7>
    15ab:	48 89 c7             	mov    %rax,%rdi
    15ae:	e8 5d fb ff ff       	call   1110 <puts@plt>
    phase_6(input);
    printf("Phase 6 passed! \n");
    15b3:	48 8d 05 fe 0c 00 00 	lea    0xcfe(%rip),%rax        # 22b8 <_IO_stdin_used+0x2b8>
    15ba:	48 89 c7             	mov    %rax,%rdi
    15bd:	e8 4e fb ff ff       	call   1110 <puts@plt>

    15c2:	b8 00 00 00 00       	mov    $0x0,%eax
    printf("Congratulations! You have passed all the tests! \n");
    15c7:	c9                   	leave  
    15c8:	c3                   	ret    

00000000000015c9 <invalid_phase>:
//char scratch[MAX_LINE];


/* Invoked by improperly built phases */
void invalid_phase(char *s) 
{
    15c9:	f3 0f 1e fa          	endbr64 
    15cd:	55                   	push   %rbp
    15ce:	48 89 e5             	mov    %rsp,%rbp
    15d1:	48 83 ec 10          	sub    $0x10,%rsp
    15d5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    printf("Invalid phase%s\n", s);
    15d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15dd:	48 89 c6             	mov    %rax,%rsi
    15e0:	48 8d 05 02 0d 00 00 	lea    0xd02(%rip),%rax        # 22e9 <_IO_stdin_used+0x2e9>
    15e7:	48 89 c7             	mov    %rax,%rdi
    15ea:	b8 00 00 00 00       	mov    $0x0,%eax
    15ef:	e8 4c fb ff ff       	call   1140 <printf@plt>
    exit(8);
    15f4:	bf 08 00 00 00       	mov    $0x8,%edi
    15f9:	e8 82 fb ff ff       	call   1180 <exit@plt>

00000000000015fe <read_six_numbers>:
}

/* Extract numbers from an input string */
 void read_six_numbers(char *input, int *numbers)
{
    15fe:	f3 0f 1e fa          	endbr64 
    1602:	55                   	push   %rbp
    1603:	48 89 e5             	mov    %rsp,%rbp
    1606:	48 83 ec 20          	sub    $0x20,%rsp
    160a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    160e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  int numScanned = sscanf(input, "%d %d %d %d %d %d",
    1612:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1616:	48 8d 78 14          	lea    0x14(%rax),%rdi
    161a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    161e:	48 8d 70 10          	lea    0x10(%rax),%rsi
    1622:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1626:	4c 8d 48 0c          	lea    0xc(%rax),%r9
    162a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    162e:	4c 8d 40 08          	lea    0x8(%rax),%r8
    1632:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1636:	48 8d 48 04          	lea    0x4(%rax),%rcx
    163a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    163e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1642:	57                   	push   %rdi
    1643:	56                   	push   %rsi
    1644:	48 8d 35 af 0c 00 00 	lea    0xcaf(%rip),%rsi        # 22fa <_IO_stdin_used+0x2fa>
    164b:	48 89 c7             	mov    %rax,%rdi
    164e:	b8 00 00 00 00       	mov    $0x0,%eax
    1653:	e8 08 fb ff ff       	call   1160 <__isoc99_sscanf@plt>
    1658:	48 83 c4 10          	add    $0x10,%rsp
    165c:	89 45 fc             	mov    %eax,-0x4(%rbp)
			  numbers, numbers + 1, numbers + 2,
			  numbers + 3, numbers + 4, numbers + 5);
  if (numScanned < 6)
    165f:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
    1663:	7f 05                	jg     166a <read_six_numbers+0x6c>
    explode_bomb();
    1665:	e8 0e 03 00 00       	call   1978 <explode_bomb>
}
    166a:	90                   	nop
    166b:	c9                   	leave  
    166c:	c3                   	ret    

000000000000166d <string_length>:

/* A more user-friendly version of strlen */
int string_length(char *aString)
{
    166d:	f3 0f 1e fa          	endbr64 
    1671:	55                   	push   %rbp
    1672:	48 89 e5             	mov    %rsp,%rbp
    1675:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    int length;
    char *ptr;

    ptr = aString;
    1679:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    167d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    length = 0;
    1681:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)

    while (*ptr != 0) {
    1688:	eb 09                	jmp    1693 <string_length+0x26>
	ptr++;
    168a:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
	length = length + 1;
    168f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    while (*ptr != 0) {
    1693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1697:	0f b6 00             	movzbl (%rax),%eax
    169a:	84 c0                	test   %al,%al
    169c:	75 ec                	jne    168a <string_length+0x1d>
    }
    return length;
    169e:	8b 45 f4             	mov    -0xc(%rbp),%eax
}
    16a1:	5d                   	pop    %rbp
    16a2:	c3                   	ret    

00000000000016a3 <strings_not_equal>:

/* A more user-friendly version of strcmp */
int strings_not_equal(char *string1, char *string2)
{
    16a3:	f3 0f 1e fa          	endbr64 
    16a7:	55                   	push   %rbp
    16a8:	48 89 e5             	mov    %rsp,%rbp
    16ab:	53                   	push   %rbx
    16ac:	48 83 ec 20          	sub    $0x20,%rsp
    16b0:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    16b4:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    char *p, *q;

    if (string_length(string1) != string_length(string2))
    16b8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16bc:	48 89 c7             	mov    %rax,%rdi
    16bf:	e8 a9 ff ff ff       	call   166d <string_length>
    16c4:	89 c3                	mov    %eax,%ebx
    16c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16ca:	48 89 c7             	mov    %rax,%rdi
    16cd:	e8 9b ff ff ff       	call   166d <string_length>
    16d2:	39 c3                	cmp    %eax,%ebx
    16d4:	74 07                	je     16dd <strings_not_equal+0x3a>
	return 1;
    16d6:	b8 01 00 00 00       	mov    $0x1,%eax
    16db:	eb 45                	jmp    1722 <strings_not_equal+0x7f>
    p = string1;
    16dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16e1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    q = string2;
    16e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16e9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    while (*p != 0) {
    16ed:	eb 23                	jmp    1712 <strings_not_equal+0x6f>
	if (*p != *q)
    16ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16f3:	0f b6 10             	movzbl (%rax),%edx
    16f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    16fa:	0f b6 00             	movzbl (%rax),%eax
    16fd:	38 c2                	cmp    %al,%dl
    16ff:	74 07                	je     1708 <strings_not_equal+0x65>
	    return 1;
    1701:	b8 01 00 00 00       	mov    $0x1,%eax
    1706:	eb 1a                	jmp    1722 <strings_not_equal+0x7f>
	p++;
    1708:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
	q++;
    170d:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    while (*p != 0) {
    1712:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1716:	0f b6 00             	movzbl (%rax),%eax
    1719:	84 c0                	test   %al,%al
    171b:	75 d2                	jne    16ef <strings_not_equal+0x4c>
    }
    return 0;
    171d:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1722:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1726:	c9                   	leave  
    1727:	c3                   	ret    

0000000000001728 <blank_line>:


/* Return true if str is a blank line */
int blank_line(char *str)
{
    1728:	f3 0f 1e fa          	endbr64 
    172c:	55                   	push   %rbp
    172d:	48 89 e5             	mov    %rsp,%rbp
    1730:	48 83 ec 10          	sub    $0x10,%rsp
    1734:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    while (*str)
    1738:	eb 37                	jmp    1771 <blank_line+0x49>
	if (!isspace(*str++))
    173a:	e8 51 fa ff ff       	call   1190 <__ctype_b_loc@plt>
    173f:	48 8b 08             	mov    (%rax),%rcx
    1742:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1746:	48 8d 50 01          	lea    0x1(%rax),%rdx
    174a:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    174e:	0f b6 00             	movzbl (%rax),%eax
    1751:	48 0f be c0          	movsbq %al,%rax
    1755:	48 01 c0             	add    %rax,%rax
    1758:	48 01 c8             	add    %rcx,%rax
    175b:	0f b7 00             	movzwl (%rax),%eax
    175e:	0f b7 c0             	movzwl %ax,%eax
    1761:	25 00 20 00 00       	and    $0x2000,%eax
    1766:	85 c0                	test   %eax,%eax
    1768:	75 07                	jne    1771 <blank_line+0x49>
	    return 0;
    176a:	b8 00 00 00 00       	mov    $0x0,%eax
    176f:	eb 10                	jmp    1781 <blank_line+0x59>
    while (*str)
    1771:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1775:	0f b6 00             	movzbl (%rax),%eax
    1778:	84 c0                	test   %al,%al
    177a:	75 be                	jne    173a <blank_line+0x12>
    return 1;
    177c:	b8 01 00 00 00       	mov    $0x1,%eax
}
    1781:	c9                   	leave  
    1782:	c3                   	ret    

0000000000001783 <skip>:

/* Read input lines until first non-blank or EOF encountered */
char *skip() 
{
    1783:	f3 0f 1e fa          	endbr64 
    1787:	55                   	push   %rbp
    1788:	48 89 e5             	mov    %rsp,%rbp
    178b:	48 83 ec 10          	sub    $0x10,%rsp
    char *p;

    while (1) {
	p = fgets(input_strings[num_input_strings], MAX_LINE, infile);
    178f:	48 8b 15 fa 2c 00 00 	mov    0x2cfa(%rip),%rdx        # 4490 <infile>
    1796:	8b 05 64 33 00 00    	mov    0x3364(%rip),%eax        # 4b00 <num_input_strings>
    179c:	48 63 c8             	movslq %eax,%rcx
    179f:	48 89 c8             	mov    %rcx,%rax
    17a2:	48 c1 e0 02          	shl    $0x2,%rax
    17a6:	48 01 c8             	add    %rcx,%rax
    17a9:	48 c1 e0 04          	shl    $0x4,%rax
    17ad:	48 8d 0d 0c 2d 00 00 	lea    0x2d0c(%rip),%rcx        # 44c0 <input_strings>
    17b4:	48 01 c8             	add    %rcx,%rax
    17b7:	be 50 00 00 00       	mov    $0x50,%esi
    17bc:	48 89 c7             	mov    %rax,%rdi
    17bf:	e8 8c f9 ff ff       	call   1150 <fgets@plt>
    17c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if ((p == NULL) || (!blank_line(p)))
    17c8:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    17cd:	74 10                	je     17df <skip+0x5c>
    17cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17d3:	48 89 c7             	mov    %rax,%rdi
    17d6:	e8 4d ff ff ff       	call   1728 <blank_line>
    17db:	85 c0                	test   %eax,%eax
    17dd:	75 b0                	jne    178f <skip+0xc>
	    return p;
    17df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
}
    17e3:	c9                   	leave  
    17e4:	c3                   	ret    

00000000000017e5 <read_line>:
 * of tricky aspects to this. First, we cut the students a little slack
 * by skipping over blank lines. Second, we allow partial solutions
 * to be read from a file before switching over to stdin.
 */
char *read_line(void)
{
    17e5:	f3 0f 1e fa          	endbr64 
    17e9:	55                   	push   %rbp
    17ea:	48 89 e5             	mov    %rsp,%rbp
    17ed:	48 83 ec 10          	sub    $0x10,%rsp
    int len;
    char *str;

    /* switch over to stdin if we hit EOF on an input disk file */
    str = skip();
    17f1:	b8 00 00 00 00       	mov    $0x0,%eax
    17f6:	e8 88 ff ff ff       	call   1783 <skip>
    17fb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    if (str == NULL) { /* EOF */
    17ff:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1804:	0f 85 86 00 00 00    	jne    1890 <read_line+0xab>
	if (infile == stdin) { /* premature EOF on stdin */
    180a:	48 8b 15 7f 2c 00 00 	mov    0x2c7f(%rip),%rdx        # 4490 <infile>
    1811:	48 8b 05 68 2c 00 00 	mov    0x2c68(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    1818:	48 39 c2             	cmp    %rax,%rdx
    181b:	75 19                	jne    1836 <read_line+0x51>
	    printf("Error: Premature EOF on stdin\n");
    181d:	48 8d 05 e8 0a 00 00 	lea    0xae8(%rip),%rax        # 230c <_IO_stdin_used+0x30c>
    1824:	48 89 c7             	mov    %rax,%rdi
    1827:	e8 e4 f8 ff ff       	call   1110 <puts@plt>
	    exit(8);
    182c:	bf 08 00 00 00       	mov    $0x8,%edi
    1831:	e8 4a f9 ff ff       	call   1180 <exit@plt>
	}
	else {
	    /* exit with OK status on EOF if we are grading the bomb */
	    /* this lets us evaluate partial solutions */
	    if (getenv("GRADE_BOMB")) {
    1836:	48 8d 05 ed 0a 00 00 	lea    0xaed(%rip),%rax        # 232a <_IO_stdin_used+0x32a>
    183d:	48 89 c7             	mov    %rax,%rdi
    1840:	e8 ab f8 ff ff       	call   10f0 <getenv@plt>
    1845:	48 85 c0             	test   %rax,%rax
    1848:	74 0a                	je     1854 <read_line+0x6f>
		exit(0); 
    184a:	bf 00 00 00 00       	mov    $0x0,%edi
    184f:	e8 2c f9 ff ff       	call   1180 <exit@plt>
	    }

	    /* otherwise switch over to stdin */
	    else {
		infile = stdin; 
    1854:	48 8b 05 25 2c 00 00 	mov    0x2c25(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    185b:	48 89 05 2e 2c 00 00 	mov    %rax,0x2c2e(%rip)        # 4490 <infile>
		str = skip();
    1862:	b8 00 00 00 00       	mov    $0x0,%eax
    1867:	e8 17 ff ff ff       	call   1783 <skip>
    186c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
		if (str == NULL) { /* premature EOF on stdin */
    1870:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1875:	75 19                	jne    1890 <read_line+0xab>
		    printf("Error: Premature EOF on stdin\n");
    1877:	48 8d 05 8e 0a 00 00 	lea    0xa8e(%rip),%rax        # 230c <_IO_stdin_used+0x30c>
    187e:	48 89 c7             	mov    %rax,%rdi
    1881:	e8 8a f8 ff ff       	call   1110 <puts@plt>
		    exit(0);
    1886:	bf 00 00 00 00       	mov    $0x0,%edi
    188b:	e8 f0 f8 ff ff       	call   1180 <exit@plt>
		}
	    }
	}
    }

    len = strlen(input_strings[num_input_strings]);
    1890:	8b 05 6a 32 00 00    	mov    0x326a(%rip),%eax        # 4b00 <num_input_strings>
    1896:	48 63 d0             	movslq %eax,%rdx
    1899:	48 89 d0             	mov    %rdx,%rax
    189c:	48 c1 e0 02          	shl    $0x2,%rax
    18a0:	48 01 d0             	add    %rdx,%rax
    18a3:	48 c1 e0 04          	shl    $0x4,%rax
    18a7:	48 8d 15 12 2c 00 00 	lea    0x2c12(%rip),%rdx        # 44c0 <input_strings>
    18ae:	48 01 d0             	add    %rdx,%rax
    18b1:	48 89 c7             	mov    %rax,%rdi
    18b4:	e8 67 f8 ff ff       	call   1120 <strlen@plt>
    18b9:	89 45 f4             	mov    %eax,-0xc(%rbp)
    if(len >= MAX_LINE-1) {
    18bc:	83 7d f4 4e          	cmpl   $0x4e,-0xc(%rbp)
    18c0:	7e 59                	jle    191b <read_line+0x136>
	printf("Error: Input line too long\n");
    18c2:	48 8d 05 6c 0a 00 00 	lea    0xa6c(%rip),%rax        # 2335 <_IO_stdin_used+0x335>
    18c9:	48 89 c7             	mov    %rax,%rdi
    18cc:	e8 3f f8 ff ff       	call   1110 <puts@plt>
	strcpy(input_strings[num_input_strings++], "***truncated***");
    18d1:	8b 05 29 32 00 00    	mov    0x3229(%rip),%eax        # 4b00 <num_input_strings>
    18d7:	8d 50 01             	lea    0x1(%rax),%edx
    18da:	89 15 20 32 00 00    	mov    %edx,0x3220(%rip)        # 4b00 <num_input_strings>
    18e0:	48 63 d0             	movslq %eax,%rdx
    18e3:	48 89 d0             	mov    %rdx,%rax
    18e6:	48 c1 e0 02          	shl    $0x2,%rax
    18ea:	48 01 d0             	add    %rdx,%rax
    18ed:	48 c1 e0 04          	shl    $0x4,%rax
    18f1:	48 8d 15 c8 2b 00 00 	lea    0x2bc8(%rip),%rdx        # 44c0 <input_strings>
    18f8:	48 01 d0             	add    %rdx,%rax
    18fb:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1902:	75 6e 63 
    1905:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    190c:	2a 2a 00 
    190f:	48 89 30             	mov    %rsi,(%rax)
    1912:	48 89 78 08          	mov    %rdi,0x8(%rax)
	explode_bomb();
    1916:	e8 5d 00 00 00       	call   1978 <explode_bomb>
    }

    /* Strip off trailing newline: */
    input_strings[num_input_strings][len-1] = '\0';
    191b:	8b 05 df 31 00 00    	mov    0x31df(%rip),%eax        # 4b00 <num_input_strings>
    1921:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1924:	83 ea 01             	sub    $0x1,%edx
    1927:	48 63 ca             	movslq %edx,%rcx
    192a:	48 63 d0             	movslq %eax,%rdx
    192d:	48 89 d0             	mov    %rdx,%rax
    1930:	48 c1 e0 02          	shl    $0x2,%rax
    1934:	48 01 d0             	add    %rdx,%rax
    1937:	48 c1 e0 04          	shl    $0x4,%rax
    193b:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    193f:	48 8d 05 7a 2b 00 00 	lea    0x2b7a(%rip),%rax        # 44c0 <input_strings>
    1946:	48 01 d0             	add    %rdx,%rax
    1949:	c6 00 00             	movb   $0x0,(%rax)
    return input_strings[num_input_strings++];
    194c:	8b 05 ae 31 00 00    	mov    0x31ae(%rip),%eax        # 4b00 <num_input_strings>
    1952:	8d 50 01             	lea    0x1(%rax),%edx
    1955:	89 15 a5 31 00 00    	mov    %edx,0x31a5(%rip)        # 4b00 <num_input_strings>
    195b:	48 63 d0             	movslq %eax,%rdx
    195e:	48 89 d0             	mov    %rdx,%rax
    1961:	48 c1 e0 02          	shl    $0x2,%rax
    1965:	48 01 d0             	add    %rdx,%rax
    1968:	48 c1 e0 04          	shl    $0x4,%rax
    196c:	48 8d 15 4d 2b 00 00 	lea    0x2b4d(%rip),%rdx        # 44c0 <input_strings>
    1973:	48 01 d0             	add    %rdx,%rax
}
    1976:	c9                   	leave  
    1977:	c3                   	ret    

0000000000001978 <explode_bomb>:


void explode_bomb(void)
{
    1978:	f3 0f 1e fa          	endbr64 
    197c:	55                   	push   %rbp
    197d:	48 89 e5             	mov    %rsp,%rbp
    printf("\n BOOM !  \n You failed \n");
    1980:	48 8d 05 c9 09 00 00 	lea    0x9c9(%rip),%rax        # 2350 <_IO_stdin_used+0x350>
    1987:	48 89 c7             	mov    %rax,%rdi
    198a:	e8 81 f7 ff ff       	call   1110 <puts@plt>
    exit(8);
    198f:	bf 08 00 00 00       	mov    $0x8,%edi
    1994:	e8 e7 f7 ff ff       	call   1180 <exit@plt>

0000000000001999 <phase_1>:
    1999:	f3 0f 1e fa          	endbr64 
    199d:	55                   	push   %rbp
    199e:	48 89 e5             	mov    %rsp,%rbp
    19a1:	48 83 ec 20          	sub    $0x20,%rsp
    19a5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    19a9:	0f b6 05 f1 2a 00 00 	movzbl 0x2af1(%rip),%eax        # 44a1 <studentid+0x9>
    19b0:	83 e8 30             	sub    $0x30,%eax
    19b3:	88 45 fb             	mov    %al,-0x5(%rbp)
    19b6:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
    19ba:	89 45 fc             	mov    %eax,-0x4(%rbp)
    19bd:	8b 55 fc             	mov    -0x4(%rbp),%edx
    19c0:	48 89 d0             	mov    %rdx,%rax
    19c3:	48 c1 e0 02          	shl    $0x2,%rax
    19c7:	48 01 d0             	add    %rdx,%rax
    19ca:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    19d1:	00 
    19d2:	48 01 d0             	add    %rdx,%rax
    19d5:	48 01 c0             	add    %rax,%rax
    19d8:	48 8d 15 41 26 00 00 	lea    0x2641(%rip),%rdx        # 4020 <special>
    19df:	48 01 c2             	add    %rax,%rdx
    19e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19e6:	48 89 d6             	mov    %rdx,%rsi
    19e9:	48 89 c7             	mov    %rax,%rdi
    19ec:	e8 b2 fc ff ff       	call   16a3 <strings_not_equal>
    19f1:	85 c0                	test   %eax,%eax
    19f3:	74 05                	je     19fa <phase_1+0x61>
    19f5:	e8 7e ff ff ff       	call   1978 <explode_bomb>
    19fa:	90                   	nop
    19fb:	c9                   	leave  
    19fc:	c3                   	ret    

00000000000019fd <phase_2>:
    19fd:	f3 0f 1e fa          	endbr64 
    1a01:	55                   	push   %rbp
    1a02:	48 89 e5             	mov    %rsp,%rbp
    1a05:	48 83 ec 40          	sub    $0x40,%rsp
    1a09:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1a0d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a14:	00 00 
    1a16:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a1a:	31 c0                	xor    %eax,%eax
    1a1c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1a20:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1a24:	48 89 d6             	mov    %rdx,%rsi
    1a27:	48 89 c7             	mov    %rax,%rdi
    1a2a:	e8 cf fb ff ff       	call   15fe <read_six_numbers>
    1a2f:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1a32:	85 c0                	test   %eax,%eax
    1a34:	79 05                	jns    1a3b <phase_2+0x3e>
    1a36:	e8 3d ff ff ff       	call   1978 <explode_bomb>
    1a3b:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1a3e:	0f b6 15 5c 2a 00 00 	movzbl 0x2a5c(%rip),%edx        # 44a1 <studentid+0x9>
    1a45:	0f be d2             	movsbl %dl,%edx
    1a48:	83 ea 30             	sub    $0x30,%edx
    1a4b:	39 d0                	cmp    %edx,%eax
    1a4d:	74 05                	je     1a54 <phase_2+0x57>
    1a4f:	e8 24 ff ff ff       	call   1978 <explode_bomb>
    1a54:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1a57:	0f b6 15 42 2a 00 00 	movzbl 0x2a42(%rip),%edx        # 44a0 <studentid+0x8>
    1a5e:	0f be d2             	movsbl %dl,%edx
    1a61:	83 ea 30             	sub    $0x30,%edx
    1a64:	39 d0                	cmp    %edx,%eax
    1a66:	74 05                	je     1a6d <phase_2+0x70>
    1a68:	e8 0b ff ff ff       	call   1978 <explode_bomb>
    1a6d:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
    1a74:	eb 33                	jmp    1aa9 <phase_2+0xac>
    1a76:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1a79:	48 98                	cltq   
    1a7b:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
    1a7f:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1a82:	83 e8 01             	sub    $0x1,%eax
    1a85:	48 98                	cltq   
    1a87:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
    1a8b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1a8e:	83 e8 02             	sub    $0x2,%eax
    1a91:	48 98                	cltq   
    1a93:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
    1a97:	01 c8                	add    %ecx,%eax
    1a99:	83 c0 01             	add    $0x1,%eax
    1a9c:	39 c2                	cmp    %eax,%edx
    1a9e:	74 05                	je     1aa5 <phase_2+0xa8>
    1aa0:	e8 d3 fe ff ff       	call   1978 <explode_bomb>
    1aa5:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1aa9:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
    1aad:	7e c7                	jle    1a76 <phase_2+0x79>
    1aaf:	90                   	nop
    1ab0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ab4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1abb:	00 00 
    1abd:	74 05                	je     1ac4 <phase_2+0xc7>
    1abf:	e8 6c f6 ff ff       	call   1130 <__stack_chk_fail@plt>
    1ac4:	c9                   	leave  
    1ac5:	c3                   	ret    

0000000000001ac6 <phase_3>:
    1ac6:	f3 0f 1e fa          	endbr64 
    1aca:	55                   	push   %rbp
    1acb:	48 89 e5             	mov    %rsp,%rbp
    1ace:	48 83 ec 30          	sub    $0x30,%rsp
    1ad2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1ad6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1add:	00 00 
    1adf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ae3:	31 c0                	xor    %eax,%eax
    1ae5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1aec:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1af3:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
    1af7:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    1afb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1aff:	48 8d 35 62 08 00 00 	lea    0x862(%rip),%rsi        # 2368 <_IO_stdin_used+0x368>
    1b06:	48 89 c7             	mov    %rax,%rdi
    1b09:	b8 00 00 00 00       	mov    $0x0,%eax
    1b0e:	e8 4d f6 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1b13:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1b16:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    1b1a:	7f 05                	jg     1b21 <phase_3+0x5b>
    1b1c:	e8 57 fe ff ff       	call   1978 <explode_bomb>
    1b21:	0f b6 05 78 29 00 00 	movzbl 0x2978(%rip),%eax        # 44a0 <studentid+0x8>
    1b28:	0f be c0             	movsbl %al,%eax
    1b2b:	8d 50 d0             	lea    -0x30(%rax),%edx
    1b2e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1b31:	39 c2                	cmp    %eax,%edx
    1b33:	74 05                	je     1b3a <phase_3+0x74>
    1b35:	e8 3e fe ff ff       	call   1978 <explode_bomb>
    1b3a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1b3d:	83 f8 09             	cmp    $0x9,%eax
    1b40:	77 7d                	ja     1bbf <phase_3+0xf9>
    1b42:	89 c0                	mov    %eax,%eax
    1b44:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1b4b:	00 
    1b4c:	48 8d 05 1d 08 00 00 	lea    0x81d(%rip),%rax        # 2370 <_IO_stdin_used+0x370>
    1b53:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    1b56:	48 98                	cltq   
    1b58:	48 8d 15 11 08 00 00 	lea    0x811(%rip),%rdx        # 2370 <_IO_stdin_used+0x370>
    1b5f:	48 01 d0             	add    %rdx,%rax
    1b62:	3e ff e0             	notrack jmp *%rax
    1b65:	c7 45 f0 ea 07 00 00 	movl   $0x7ea,-0x10(%rbp)
    1b6c:	eb 56                	jmp    1bc4 <phase_3+0xfe>
    1b6e:	c7 45 f0 61 09 00 00 	movl   $0x961,-0x10(%rbp)
    1b75:	eb 4d                	jmp    1bc4 <phase_3+0xfe>
    1b77:	c7 45 f0 7b 00 00 00 	movl   $0x7b,-0x10(%rbp)
    1b7e:	eb 44                	jmp    1bc4 <phase_3+0xfe>
    1b80:	c7 45 f0 8e 02 00 00 	movl   $0x28e,-0x10(%rbp)
    1b87:	eb 3b                	jmp    1bc4 <phase_3+0xfe>
    1b89:	c7 45 f0 1c 01 00 00 	movl   $0x11c,-0x10(%rbp)
    1b90:	eb 32                	jmp    1bc4 <phase_3+0xfe>
    1b92:	c7 45 f0 15 03 00 00 	movl   $0x315,-0x10(%rbp)
    1b99:	eb 29                	jmp    1bc4 <phase_3+0xfe>
    1b9b:	c7 45 f0 a9 01 00 00 	movl   $0x1a9,-0x10(%rbp)
    1ba2:	eb 20                	jmp    1bc4 <phase_3+0xfe>
    1ba4:	c7 45 f0 63 00 00 00 	movl   $0x63,-0x10(%rbp)
    1bab:	eb 17                	jmp    1bc4 <phase_3+0xfe>
    1bad:	c7 45 f0 64 00 00 00 	movl   $0x64,-0x10(%rbp)
    1bb4:	eb 0e                	jmp    1bc4 <phase_3+0xfe>
    1bb6:	c7 45 f0 41 01 00 00 	movl   $0x141,-0x10(%rbp)
    1bbd:	eb 05                	jmp    1bc4 <phase_3+0xfe>
    1bbf:	e8 b4 fd ff ff       	call   1978 <explode_bomb>
    1bc4:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1bc7:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    1bca:	74 05                	je     1bd1 <phase_3+0x10b>
    1bcc:	e8 a7 fd ff ff       	call   1978 <explode_bomb>
    1bd1:	90                   	nop
    1bd2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bd6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1bdd:	00 00 
    1bdf:	74 05                	je     1be6 <phase_3+0x120>
    1be1:	e8 4a f5 ff ff       	call   1130 <__stack_chk_fail@plt>
    1be6:	c9                   	leave  
    1be7:	c3                   	ret    

0000000000001be8 <func4>:
    1be8:	f3 0f 1e fa          	endbr64 
    1bec:	55                   	push   %rbp
    1bed:	48 89 e5             	mov    %rsp,%rbp
    1bf0:	48 83 ec 20          	sub    $0x20,%rsp
    1bf4:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1bf7:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1bfa:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1bfd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1c00:	2b 45 e8             	sub    -0x18(%rbp),%eax
    1c03:	89 c2                	mov    %eax,%edx
    1c05:	c1 ea 1f             	shr    $0x1f,%edx
    1c08:	01 d0                	add    %edx,%eax
    1c0a:	d1 f8                	sar    %eax
    1c0c:	89 c2                	mov    %eax,%edx
    1c0e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1c11:	01 d0                	add    %edx,%eax
    1c13:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1c16:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c19:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1c1c:	7e 19                	jle    1c37 <func4+0x4f>
    1c1e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c21:	8d 50 ff             	lea    -0x1(%rax),%edx
    1c24:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    1c27:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1c2a:	89 ce                	mov    %ecx,%esi
    1c2c:	89 c7                	mov    %eax,%edi
    1c2e:	e8 b5 ff ff ff       	call   1be8 <func4>
    1c33:	01 c0                	add    %eax,%eax
    1c35:	eb 29                	jmp    1c60 <func4+0x78>
    1c37:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c3a:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1c3d:	7d 1c                	jge    1c5b <func4+0x73>
    1c3f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c42:	8d 48 01             	lea    0x1(%rax),%ecx
    1c45:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    1c48:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1c4b:	89 ce                	mov    %ecx,%esi
    1c4d:	89 c7                	mov    %eax,%edi
    1c4f:	e8 94 ff ff ff       	call   1be8 <func4>
    1c54:	01 c0                	add    %eax,%eax
    1c56:	83 c0 01             	add    $0x1,%eax
    1c59:	eb 05                	jmp    1c60 <func4+0x78>
    1c5b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c60:	c9                   	leave  
    1c61:	c3                   	ret    

0000000000001c62 <phase_4>:
    1c62:	f3 0f 1e fa          	endbr64 
    1c66:	55                   	push   %rbp
    1c67:	48 89 e5             	mov    %rsp,%rbp
    1c6a:	48 83 ec 30          	sub    $0x30,%rsp
    1c6e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1c72:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c79:	00 00 
    1c7b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1c7f:	31 c0                	xor    %eax,%eax
    1c81:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
    1c85:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
    1c89:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1c8d:	48 8d 35 d4 06 00 00 	lea    0x6d4(%rip),%rsi        # 2368 <_IO_stdin_used+0x368>
    1c94:	48 89 c7             	mov    %rax,%rdi
    1c97:	b8 00 00 00 00       	mov    $0x0,%eax
    1c9c:	e8 bf f4 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1ca1:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1ca4:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    1ca8:	75 0f                	jne    1cb9 <phase_4+0x57>
    1caa:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1cad:	85 c0                	test   %eax,%eax
    1caf:	78 08                	js     1cb9 <phase_4+0x57>
    1cb1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1cb4:	83 f8 0e             	cmp    $0xe,%eax
    1cb7:	7e 05                	jle    1cbe <phase_4+0x5c>
    1cb9:	e8 ba fc ff ff       	call   1978 <explode_bomb>
    1cbe:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
    1cc5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1cc8:	ba 0e 00 00 00       	mov    $0xe,%edx
    1ccd:	be 00 00 00 00       	mov    $0x0,%esi
    1cd2:	89 c7                	mov    %eax,%edi
    1cd4:	e8 0f ff ff ff       	call   1be8 <func4>
    1cd9:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1cdc:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1cdf:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    1ce2:	75 08                	jne    1cec <phase_4+0x8a>
    1ce4:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1ce7:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    1cea:	74 05                	je     1cf1 <phase_4+0x8f>
    1cec:	e8 87 fc ff ff       	call   1978 <explode_bomb>
    1cf1:	90                   	nop
    1cf2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1cf6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1cfd:	00 00 
    1cff:	74 05                	je     1d06 <phase_4+0xa4>
    1d01:	e8 2a f4 ff ff       	call   1130 <__stack_chk_fail@plt>
    1d06:	c9                   	leave  
    1d07:	c3                   	ret    

0000000000001d08 <phase_5>:
    1d08:	f3 0f 1e fa          	endbr64 
    1d0c:	55                   	push   %rbp
    1d0d:	48 89 e5             	mov    %rsp,%rbp
    1d10:	48 83 ec 30          	sub    $0x30,%rsp
    1d14:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1d18:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d1f:	00 00 
    1d21:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1d25:	31 c0                	xor    %eax,%eax
    1d27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1d2b:	48 89 c7             	mov    %rax,%rdi
    1d2e:	e8 3a f9 ff ff       	call   166d <string_length>
    1d33:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1d36:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
    1d3a:	74 05                	je     1d41 <phase_5+0x39>
    1d3c:	e8 37 fc ff ff       	call   1978 <explode_bomb>
    1d41:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1d48:	eb 30                	jmp    1d7a <phase_5+0x72>
    1d4a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1d4d:	48 63 d0             	movslq %eax,%rdx
    1d50:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1d54:	48 01 d0             	add    %rdx,%rax
    1d57:	0f b6 00             	movzbl (%rax),%eax
    1d5a:	0f be c0             	movsbl %al,%eax
    1d5d:	83 e0 0f             	and    $0xf,%eax
    1d60:	48 98                	cltq   
    1d62:	48 8d 15 c7 25 00 00 	lea    0x25c7(%rip),%rdx        # 4330 <array.0>
    1d69:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    1d6d:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1d70:	48 98                	cltq   
    1d72:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
    1d76:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    1d7a:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
    1d7e:	7e ca                	jle    1d4a <phase_5+0x42>
    1d80:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    1d84:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
    1d88:	48 8d 15 09 06 00 00 	lea    0x609(%rip),%rdx        # 2398 <_IO_stdin_used+0x398>
    1d8f:	48 89 d6             	mov    %rdx,%rsi
    1d92:	48 89 c7             	mov    %rax,%rdi
    1d95:	e8 09 f9 ff ff       	call   16a3 <strings_not_equal>
    1d9a:	85 c0                	test   %eax,%eax
    1d9c:	74 05                	je     1da3 <phase_5+0x9b>
    1d9e:	e8 d5 fb ff ff       	call   1978 <explode_bomb>
    1da3:	90                   	nop
    1da4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1da8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1daf:	00 00 
    1db1:	74 05                	je     1db8 <phase_5+0xb0>
    1db3:	e8 78 f3 ff ff       	call   1130 <__stack_chk_fail@plt>
    1db8:	c9                   	leave  
    1db9:	c3                   	ret    

0000000000001dba <phase_6>:
    1dba:	f3 0f 1e fa          	endbr64 
    1dbe:	55                   	push   %rbp
    1dbf:	48 89 e5             	mov    %rsp,%rbp
    1dc2:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1dc9:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    1dd0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dd7:	00 00 
    1dd9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ddd:	31 c0                	xor    %eax,%eax
    1ddf:	48 8d 05 9a 25 00 00 	lea    0x259a(%rip),%rax        # 4380 <node1>
    1de6:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1dea:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1dee:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1df5:	48 89 d6             	mov    %rdx,%rsi
    1df8:	48 89 c7             	mov    %rax,%rdi
    1dfb:	e8 fe f7 ff ff       	call   15fe <read_six_numbers>
    1e00:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1e07:	eb 54                	jmp    1e5d <phase_6+0xa3>
    1e09:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e0c:	48 98                	cltq   
    1e0e:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1e12:	85 c0                	test   %eax,%eax
    1e14:	7e 0e                	jle    1e24 <phase_6+0x6a>
    1e16:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e19:	48 98                	cltq   
    1e1b:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1e1f:	83 f8 06             	cmp    $0x6,%eax
    1e22:	7e 05                	jle    1e29 <phase_6+0x6f>
    1e24:	e8 4f fb ff ff       	call   1978 <explode_bomb>
    1e29:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e2c:	83 c0 01             	add    $0x1,%eax
    1e2f:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1e32:	eb 1f                	jmp    1e53 <phase_6+0x99>
    1e34:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e37:	48 98                	cltq   
    1e39:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
    1e3d:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1e40:	48 98                	cltq   
    1e42:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1e46:	39 c2                	cmp    %eax,%edx
    1e48:	75 05                	jne    1e4f <phase_6+0x95>
    1e4a:	e8 29 fb ff ff       	call   1978 <explode_bomb>
    1e4f:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1e53:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp)
    1e57:	7e db                	jle    1e34 <phase_6+0x7a>
    1e59:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1e5d:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1e61:	7e a6                	jle    1e09 <phase_6+0x4f>
    1e63:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1e6a:	eb 41                	jmp    1ead <phase_6+0xf3>
    1e6c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1e70:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1e74:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
    1e7b:	eb 10                	jmp    1e8d <phase_6+0xd3>
    1e7d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e81:	48 8b 40 08          	mov    0x8(%rax),%rax
    1e85:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1e89:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1e8d:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e90:	48 98                	cltq   
    1e92:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1e96:	39 45 8c             	cmp    %eax,-0x74(%rbp)
    1e99:	7c e2                	jl     1e7d <phase_6+0xc3>
    1e9b:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e9e:	48 98                	cltq   
    1ea0:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    1ea4:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
    1ea9:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1ead:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1eb1:	7e b9                	jle    1e6c <phase_6+0xb2>
    1eb3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1eb7:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1ebb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1ebf:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1ec3:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
    1eca:	eb 22                	jmp    1eee <phase_6+0x134>
    1ecc:	8b 45 88             	mov    -0x78(%rbp),%eax
    1ecf:	48 98                	cltq   
    1ed1:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx
    1ed6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1eda:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1ede:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1ee2:	48 8b 40 08          	mov    0x8(%rax),%rax
    1ee6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1eea:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1eee:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1ef2:	7e d8                	jle    1ecc <phase_6+0x112>
    1ef4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1ef8:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1eff:	00 
    1f00:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1f04:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1f08:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1f0f:	eb 29                	jmp    1f3a <phase_6+0x180>
    1f11:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1f15:	8b 10                	mov    (%rax),%edx
    1f17:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1f1b:	48 8b 40 08          	mov    0x8(%rax),%rax
    1f1f:	8b 00                	mov    (%rax),%eax
    1f21:	39 c2                	cmp    %eax,%edx
    1f23:	7d 05                	jge    1f2a <phase_6+0x170>
    1f25:	e8 4e fa ff ff       	call   1978 <explode_bomb>
    1f2a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1f2e:	48 8b 40 08          	mov    0x8(%rax),%rax
    1f32:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1f36:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1f3a:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
    1f3e:	7e d1                	jle    1f11 <phase_6+0x157>
    1f40:	90                   	nop
    1f41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1f45:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1f4c:	00 00 
    1f4e:	74 05                	je     1f55 <phase_6+0x19b>
    1f50:	e8 db f1 ff ff       	call   1130 <__stack_chk_fail@plt>
    1f55:	c9                   	leave  
    1f56:	c3                   	ret    

0000000000001f57 <fun7>:
    1f57:	f3 0f 1e fa          	endbr64 
    1f5b:	55                   	push   %rbp
    1f5c:	48 89 e5             	mov    %rsp,%rbp
    1f5f:	48 83 ec 10          	sub    $0x10,%rsp
    1f63:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1f67:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1f6a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1f6f:	75 07                	jne    1f78 <fun7+0x21>
    1f71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f76:	eb 50                	jmp    1fc8 <fun7+0x71>
    1f78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1f7c:	8b 00                	mov    (%rax),%eax
    1f7e:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1f81:	7d 19                	jge    1f9c <fun7+0x45>
    1f83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1f87:	48 8b 40 08          	mov    0x8(%rax),%rax
    1f8b:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1f8e:	89 d6                	mov    %edx,%esi
    1f90:	48 89 c7             	mov    %rax,%rdi
    1f93:	e8 bf ff ff ff       	call   1f57 <fun7>
    1f98:	01 c0                	add    %eax,%eax
    1f9a:	eb 2c                	jmp    1fc8 <fun7+0x71>
    1f9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1fa0:	8b 00                	mov    (%rax),%eax
    1fa2:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1fa5:	75 07                	jne    1fae <fun7+0x57>
    1fa7:	b8 00 00 00 00       	mov    $0x0,%eax
    1fac:	eb 1a                	jmp    1fc8 <fun7+0x71>
    1fae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1fb2:	48 8b 40 10          	mov    0x10(%rax),%rax
    1fb6:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1fb9:	89 d6                	mov    %edx,%esi
    1fbb:	48 89 c7             	mov    %rax,%rdi
    1fbe:	e8 94 ff ff ff       	call   1f57 <fun7>
    1fc3:	01 c0                	add    %eax,%eax
    1fc5:	83 c0 01             	add    $0x1,%eax
    1fc8:	c9                   	leave  
    1fc9:	c3                   	ret    

Disassembly of section .fini:

0000000000001fcc <_fini>:
    1fcc:	f3 0f 1e fa          	endbr64 
    1fd0:	48 83 ec 08          	sub    $0x8,%rsp
    1fd4:	48 83 c4 08          	add    $0x8,%rsp
    1fd8:	c3                   	ret    
