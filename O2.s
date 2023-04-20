matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        push    r13
        mov     rcx, rsi
        movabs  rsi, -6148914691236517205
        push    r12
        push    rbp
        push    rbx
        mov     rbp, QWORD PTR [rdi]
        mov     rax, QWORD PTR [rdi+8]
        sub     rax, rbp
        sar     rax, 3
        imul    rax, rsi
        test    eax, eax
        jle     .L3
        lea     r9d, [rax-1]
        mov     r11, QWORD PTR [rcx]
        mov     r12, QWORD PTR [rdx]
        xor     ebx, ebx
        add     r9, 1
        lea     r13, [r9+r9*2]
        sal     r9, 3
        sal     r13, 3
.L5:
        mov     r8, QWORD PTR [rbp+0+rbx]
        mov     r10, QWORD PTR [r12+rbx]
        xor     esi, esi
        lea     rdi, [r9+r8]
.L8:
        mov     rdx, r11
        mov     rax, r8
        pxor    xmm1, xmm1
.L6:
        mov     rcx, QWORD PTR [rdx]
        add     rax, 8
        add     rdx, 24
        movsd   xmm0, QWORD PTR [rcx+rsi]
        mulsd   xmm0, QWORD PTR [rax-8]
        addsd   xmm1, xmm0
        cmp     rdi, rax
        jne     .L6
        movsd   QWORD PTR [r10+rsi], xmm1
        add     rsi, 8
        cmp     r9, rsi
        jne     .L8
        add     rbx, 24
        cmp     r13, rbx
        jne     .L5
.L3:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret

.LC1:
        .string "cannot create std::vector larger than max_size()"
.LC6:
        .string " "
main:
        push    r12
        mov     edi, 64
        push    rbp
        push    rbx
        sub     rsp, 144
        call    operator new(unsigned long)
        lea     rcx, [rsp+80]
        mov     esi, 8
        movsd   xmm0, QWORD PTR .LC3[rip]
        lea     rdx, [rax+64]
        lea     rdi, [rsp+16]
        mov     QWORD PTR [rsp+112], rax
        unpcklpd        xmm0, xmm0
        mov     QWORD PTR [rsp+128], rdx
        mov     QWORD PTR [rsp+120], rdx
        lea     rdx, [rsp+112]
        movups  XMMWORD PTR [rax], xmm0
        movups  XMMWORD PTR [rax+16], xmm0
        movups  XMMWORD PTR [rax+32], xmm0
        movups  XMMWORD PTR [rax+48], xmm0
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        pxor    xmm0, xmm0
        mov     edi, 64
        movups  XMMWORD PTR [rsp+120], xmm0
        call    operator new(unsigned long)
        lea     rdx, [rax+64]
        lea     rcx, [rsp+80]
        mov     esi, 8
        movsd   xmm0, QWORD PTR .LC5[rip]
        mov     QWORD PTR [rsp+128], rdx
        lea     rdi, [rsp+48]
        unpcklpd        xmm0, xmm0
        mov     QWORD PTR [rsp+120], rdx
        lea     rdx, [rsp+112]
        movups  XMMWORD PTR [rax], xmm0
        movups  XMMWORD PTR [rax+16], xmm0
        movups  XMMWORD PTR [rax+32], xmm0
        movups  XMMWORD PTR [rax+48], xmm0
        mov     QWORD PTR [rsp+112], rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        pxor    xmm0, xmm0
        mov     edi, 64
        movups  XMMWORD PTR [rsp+120], xmm0
        call    operator new(unsigned long)
        mov     QWORD PTR [rax], 0x000000000
        lea     rcx, [rax+64]
        pxor    xmm0, xmm0
        lea     rdx, [rsp+112]
        mov     QWORD PTR [rsp+120], rcx
        mov     esi, 8
        lea     rdi, [rsp+80]
        mov     QWORD PTR [rax+56], 0
        mov     QWORD PTR [rsp+128], rcx
        lea     rcx, [rsp+15]
        movups  XMMWORD PTR [rax+8], xmm0
        movups  XMMWORD PTR [rax+24], xmm0
        movups  XMMWORD PTR [rax+40], xmm0
        mov     QWORD PTR [rsp+112], rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        lea     rdx, [rsp+80]
        lea     rsi, [rsp+48]
        lea     rdi, [rsp+16]
        call    matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&)
        mov     rbp, QWORD PTR [rsp+80]
        lea     r12, [rbp+192]
.L59:
        xor     ebx, ebx
.L60:
        mov     rax, QWORD PTR [rbp+0]
        mov     edi, OFFSET FLAT:std::cout
        movsd   xmm0, QWORD PTR [rax+rbx]
        call    std::basic_ostream<char, std::char_traits<char> >& std::basic_ostream<char, std::char_traits<char> >::_M_insert<double>(double)
        mov     rdi, rax
        mov     edx, 1
        mov     esi, OFFSET FLAT:.LC6
        call    std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
        add     rbx, 8
        cmp     rbx, 64
        jne     .L60
        mov     rax, QWORD PTR std::cout[rip]
        mov     rax, QWORD PTR [rax-24]
        mov     rbx, QWORD PTR std::cout[rax+240]
        test    rbx, rbx
        je      .L82
        cmp     BYTE PTR [rbx+56], 0
        je      .L62
        movsx   esi, BYTE PTR [rbx+67]
.L63:
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::put(char)
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::flush()
        add     rbp, 24
        cmp     r12, rbp
        jne     .L59
        lea     rdi, [rsp+80]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rdi, [rsp+48]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rdi, [rsp+16]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        add     rsp, 144
        xor     eax, eax
        pop     rbx
        pop     rbp
        pop     r12
        ret
.L62:
        mov     rdi, rbx
        call    std::ctype<char>::_M_widen_init() const
        mov     rax, QWORD PTR [rbx]
        mov     esi, 10
        mov     rax, QWORD PTR [rax+48]
        cmp     rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
        je      .L63
        mov     rdi, rbx
        call    rax
        movsx   esi, al
        jmp     .L63
.L82:
        call    std::__throw_bad_cast()
        mov     rbx, rax
        jmp     .L70
        mov     rbx, rax
        jmp     .L68
        mov     rbx, rax
        jmp     .L69
        mov     rbx, rax
        jmp     .L66
        mov     rbx, rax
        jmp     .L67
        mov     rbx, rax
        jmp     .L65
main.cold:
.L70:
        lea     rdi, [rsp+80]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
.L69:
        lea     rdi, [rsp+48]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
.L67:
        lea     rdi, [rsp+16]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume
.L68:
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        jmp     .L69
.L66:
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        jmp     .L67
.L65:
        lea     rdi, [rsp+112]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume
_GLOBAL__sub_I_matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        sub     rsp, 8
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        add     rsp, 8
        jmp     __cxa_atexit
.LC3:
        .long   0
        .long   1072693248
.LC5:
        .long   0
        .long   1073741824