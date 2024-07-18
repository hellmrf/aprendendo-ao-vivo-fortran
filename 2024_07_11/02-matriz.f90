program matriz
    implicit none

    integer, allocatable :: notas(:)
    integer :: i, n_notas
    real :: soma = 0.0, media = 0.0


    print *, "Bem vindo ao sistema de notas. Quantas notas serão informadas?"
    read(*,*) n_notas

    allocate(notas(n_notas))
    

    do i = 1,n_notas
        print *, "Nota ", i, " de ", n_notas, ": "
        read(*,*) notas(i)
        
        soma = soma + notas(i)
    end do

    media = soma / n_notas

    if (soma > 100) then
        print *, "Soma ", soma, " > 100. Há algo errado."
    else
        print *, "Com base nas notas inseridas, o aluno totalizou ", soma, " pontos (média = ", media , ")"
    end if




    deallocate(notas)
end program matriz