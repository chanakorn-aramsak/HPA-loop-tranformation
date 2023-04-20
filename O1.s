matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rdx
        mov     rax, QWORD PTR [rdi+8]
        sub     rax, QWORD PTR [rdi]
        sar     rax, 3
        movabs  rdx, -6148914691236517205
        imul    rax, rdx
        test    eax, eax
        jle     .L1
        mov     r10, rdi
        mov     r11, rsi
        lea     eax, [rax-1]
        lea     r9, [rax+1]
        lea     r12, [r9+r9*2]
        sal     r12, 3
        sal     r9, 3
        mov     r8d, 0
        lea     rbp, [8+rax*8]
.L3:
        mov     esi, 0
.L6:
        mov     rax, QWORD PTR [r10]
        mov     rax, QWORD PTR [rax+r8]
        mov     rdx, QWORD PTR [r11]
        lea     rdi, [rbp+0+rax]
        pxor    xmm1, xmm1
.L4:
        mov     rcx, QWORD PTR [rdx]
        movsd   xmm0, QWORD PTR [rcx+rsi]
        mulsd   xmm0, QWORD PTR [rax]
        addsd   xmm1, xmm0
        add     rax, 8
        add     rdx, 24
        cmp     rdi, rax
        jne     .L4
        mov     rax, QWORD PTR [rbx]
        mov     rax, QWORD PTR [rax+r8]
        movsd   QWORD PTR [rax+rsi], xmm1
        add     rsi, 8
        cmp     rsi, r9
        jne     .L6
        add     r8, 24
        cmp     r8, r12
        jne     .L3
.L1:
        pop     rbx
        pop     rbp
        pop     r12
        ret

.LC1:
        .string "cannot create std::vector larger than max_size()"
.LC4:
        .string " "
main:
        push    rbp
        push    rbx
        sub     rsp, 200
        mov     edi, 64
        call    operator new(unsigned long)
        mov     QWORD PTR [rsp+96], rax
        lea     rdx, [rax+64]
        mov     QWORD PTR [rsp+112], rdx
        movsd   xmm0, QWORD PTR .LC2[rip]
.L53:
        movsd   QWORD PTR [rax], xmm0
        add     rax, 8
        cmp     rax, rdx
        jne     .L53
        mov     QWORD PTR [rsp+104], rdx
        lea     rcx, [rsp+95]
        lea     rdx, [rsp+96]
        mov     esi, 8
        lea     rdi, [rsp+64]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+96]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        mov     QWORD PTR [rsp+136], 0
        mov     QWORD PTR [rsp+144], 0
        mov     edi, 64
        call    operator new(unsigned long)
        mov     QWORD PTR [rsp+128], rax
        lea     rdx, [rax+64]
        mov     QWORD PTR [rsp+144], rdx
        movsd   xmm0, QWORD PTR .LC3[rip]
.L54:
        movsd   QWORD PTR [rax], xmm0
        add     rax, 8
        cmp     rax, rdx
        jne     .L54
        mov     QWORD PTR [rsp+136], rdx
        lea     rcx, [rsp+127]
        lea     rdx, [rsp+128]
        mov     esi, 8
        lea     rdi, [rsp+32]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+128]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        mov     QWORD PTR [rsp+168], 0
        mov     QWORD PTR [rsp+176], 0
        mov     edi, 64
        call    operator new(unsigned long)
        mov     QWORD PTR [rsp+160], rax
        lea     rdx, [rax+64]
        mov     QWORD PTR [rsp+176], rdx
        mov     QWORD PTR [rax], 0x000000000
        add     rax, 8
.L55:
        mov     QWORD PTR [rax], 0x000000000
        add     rax, 8
        cmp     rdx, rax
        jne     .L55
        mov     QWORD PTR [rsp+168], rdx
        lea     rcx, [rsp+159]
        lea     rdx, [rsp+160]
        mov     esi, 8
        mov     rdi, rsp
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rdi, [rsp+160]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        mov     rdx, rsp
        lea     rsi, [rsp+32]
        lea     rdi, [rsp+64]
        call    matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&)
        mov     ebp, 0
        jmp     .L56
.L81:
        mov     rdi, rax
        mov     edx, 1
        mov     esi, OFFSET FLAT:.LC4
        call    std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
        add     rbx, 8
        cmp     rbx, 64
        je      .L80
.L57:
        mov     rax, QWORD PTR [rsp]
        mov     rax, QWORD PTR [rax+rbp]
        movsd   xmm0, QWORD PTR [rax+rbx]
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::basic_ostream<char, std::char_traits<char> >::_M_insert<double>(double)
        jmp     .L81
.L80:
        mov     rax, QWORD PTR std::cout[rip]
        mov     rax, QWORD PTR [rax-24]
        mov     rbx, QWORD PTR std::cout[rax+240]
        test    rbx, rbx
        je      .L82
        cmp     BYTE PTR [rbx+56], 0
        je      .L59
        movzx   esi, BYTE PTR [rbx+67]
.L60:
        movsx   esi, sil
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::put(char)
        jmp     .L83
.L82:
        call    std::__throw_bad_cast()
        mov     rbx, rax
        mov     rdi, rsp
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        jmp     .L66
.L59:
        mov     rdi, rbx
        call    std::ctype<char>::_M_widen_init() const
        mov     rax, QWORD PTR [rbx]
        mov     esi, 10
        mov     rdi, rbx
        call    [QWORD PTR [rax+48]]
        mov     esi, eax
        jmp     .L60
.L83:
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::flush()
        add     rbp, 24
        cmp     rbp, 192
        je      .L61
.L56:
        mov     ebx, 0
        jmp     .L57
        mov     rbx, rax
        lea     rdi, [rsp+96]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume
        mov     rbx, rax
        lea     rdi, [rsp+128]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
.L64:
        lea     rdi, [rsp+64]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume
        mov     rbx, rax
        lea     rdi, [rsp+160]
        call    std::_Vector_base<double, std::allocator<double> >::~_Vector_base() [base object destructor]
.L66:
        lea     rdi, [rsp+32]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        jmp     .L64
        mov     rbx, rax
        jmp     .L66
        mov     rbx, rax
        jmp     .L64
.L61:
        mov     rdi, rsp
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rdi, [rsp+32]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rdi, [rsp+64]
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        mov     eax, 0
        add     rsp, 200
        pop     rbx
        pop     rbp
        ret
_GLOBAL__sub_I_matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        sub     rsp, 8
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
        add     rsp, 8
        ret
.LC2:
        .long   0
        .long   1072693248
.LC3:
        .long   0
        .long   1073741824