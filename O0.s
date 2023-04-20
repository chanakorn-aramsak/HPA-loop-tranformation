matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     QWORD PTR [rbp-56], rdx
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::size() const
        mov     DWORD PTR [rbp-24], eax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L7
.L12:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L8
.L11:
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-16], xmm0
        mov     DWORD PTR [rbp-20], 0
        jmp     .L9
.L10:
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::operator[](unsigned long)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<double, std::allocator<double> >::operator[](unsigned long)
        movsd   xmm2, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-64], xmm2
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        mov     rax, QWORD PTR [rbp-48]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::operator[](unsigned long)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<double, std::allocator<double> >::operator[](unsigned long)
        movsd   xmm0, QWORD PTR [rax]
        mulsd   xmm0, QWORD PTR [rbp-64]
        movsd   xmm1, QWORD PTR [rbp-16]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rbp-16], xmm0
        add     DWORD PTR [rbp-20], 1
.L9:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-24]
        jl      .L10
        movsd   xmm3, QWORD PTR [rbp-16]
        movsd   QWORD PTR [rbp-64], xmm3
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, QWORD PTR [rbp-56]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::operator[](unsigned long)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<double, std::allocator<double> >::operator[](unsigned long)
        movsd   xmm3, QWORD PTR [rbp-64]
        movsd   QWORD PTR [rax], xmm3
        add     DWORD PTR [rbp-8], 1
.L8:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-24]
        jl      .L11
        add     DWORD PTR [rbp-4], 1
.L7:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-24]
        jl      .L12
        nop
        nop
        leave
        ret
.LC3:
        .string " "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 248
        mov     DWORD PTR [rbp-28], 8
        lea     rax, [rbp-161]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::allocator() [complete object constructor]
        lea     rax, [rbp-129]
        mov     rdi, rax
        call    std::allocator<double>::allocator() [complete object constructor]
        movsd   xmm0, QWORD PTR .LC1[rip]
        movsd   QWORD PTR [rbp-128], xmm0
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        lea     rcx, [rbp-129]
        lea     rdx, [rbp-128]
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::vector(unsigned long, double const&, std::allocator<double> const&) [complete object constructor]
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        lea     rcx, [rbp-161]
        lea     rdx, [rbp-160]
        lea     rax, [rbp-192]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        lea     rax, [rbp-129]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-161]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        lea     rax, [rbp-113]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::allocator() [complete object constructor]
        lea     rax, [rbp-81]
        mov     rdi, rax
        call    std::allocator<double>::allocator() [complete object constructor]
        movsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR [rbp-80], xmm0
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        lea     rcx, [rbp-81]
        lea     rdx, [rbp-80]
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::vector(unsigned long, double const&, std::allocator<double> const&) [complete object constructor]
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        lea     rcx, [rbp-113]
        lea     rdx, [rbp-112]
        lea     rax, [rbp-224]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        lea     rax, [rbp-81]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-113]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        lea     rax, [rbp-65]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::allocator() [complete object constructor]
        lea     rax, [rbp-29]
        mov     rdi, rax
        call    std::allocator<double>::allocator() [complete object constructor]
        mov     eax, DWORD PTR [rbp-28]
        movsx   rcx, eax
        lea     rdx, [rbp-29]
        lea     rax, [rbp-64]
        mov     rsi, rcx
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::vector(unsigned long, std::allocator<double> const&) [complete object constructor]
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        lea     rcx, [rbp-65]
        lea     rdx, [rbp-64]
        lea     rax, [rbp-256]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::vector(unsigned long, std::vector<double, std::allocator<double> > const&, std::allocator<std::vector<double, std::allocator<double> > > const&) [complete object constructor]
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        lea     rax, [rbp-29]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-65]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        lea     rdx, [rbp-256]
        lea     rcx, [rbp-224]
        lea     rax, [rbp-192]
        mov     rsi, rcx
        mov     rdi, rax
        call    matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&)
        mov     DWORD PTR [rbp-20], 0
        jmp     .L14
.L17:
        mov     DWORD PTR [rbp-24], 0
        jmp     .L15
.L16:
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        lea     rax, [rbp-256]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::operator[](unsigned long)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-24]
        cdqe
        mov     rsi, rax
        mov     rdi, rdx
        call    std::vector<double, std::allocator<double> >::operator[](unsigned long)
        mov     rax, QWORD PTR [rax]
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(double)
        mov     esi, OFFSET FLAT:.LC3
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        add     DWORD PTR [rbp-24], 1
.L15:
        mov     eax, DWORD PTR [rbp-24]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L16
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        add     DWORD PTR [rbp-20], 1
.L14:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-28]
        jl      .L17
        mov     ebx, 0
        lea     rax, [rbp-256]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rax, [rbp-224]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        lea     rax, [rbp-192]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        mov     eax, ebx
        jmp     .L35
        mov     rbx, rax
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        jmp     .L20
        mov     rbx, rax
.L20:
        lea     rax, [rbp-129]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-161]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
        mov     rbx, rax
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        jmp     .L22
        mov     rbx, rax
.L22:
        lea     rax, [rbp-81]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-113]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        jmp     .L23
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        jmp     .L25
        mov     rbx, rax
.L25:
        lea     rax, [rbp-29]
        mov     rdi, rax
        call    std::allocator<double>::~allocator() [complete object destructor]
        lea     rax, [rbp-65]
        mov     rdi, rax
        call    std::allocator<std::vector<double, std::allocator<double> > >::~allocator() [complete object destructor]
        jmp     .L26
        mov     rbx, rax
        lea     rax, [rbp-256]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
.L26:
        lea     rax, [rbp-224]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
.L23:
        lea     rax, [rbp-192]
        mov     rdi, rax
        call    std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L35:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC4:
        .string "cannot create std::vector larger than max_size()"

__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L258
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L258
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L258:
        nop
        leave
        ret
_GLOBAL__sub_I_matrix_mult(std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&, std::vector<std::vector<double, std::allocator<double> >, std::allocator<std::vector<double, std::allocator<double> > > >&):
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
.LC1:
        .long   0
        .long   1072693248
.LC2:
        .long   0
        .long   1073741824