program matriz
    implicit none

    integer, allocatable :: notas(:)
    integer :: i, n_notas
    real :: soma = 0.0, media = 0.0


    10 print *, "Bem vindo ao sistema de notas. Quantas notas serão informadas?"
    read(*,*) n_notas

    allocate(notas(n_notas))
    

    ! laço começa aqui
    i = 1


    30 print *, "Nota ", i, " de ", n_notas, ": "
    read(*,*) notas(i)
    soma = soma + notas(i)



    i = i + 1
    if (i > n_notas) goto 40
    goto 30
    

    40 media = soma / n_notas

    if (soma > 100) goto 60
    goto 70

    60 print *, "Soma ", soma, " > 100. Há algo errado."
    goto 10
    70 print *, "Com base nas notas inseridas, o aluno totalizou ", soma, " pontos (média = ", media , ")"
    goto 80




    80 deallocate(notas)
end program matriz