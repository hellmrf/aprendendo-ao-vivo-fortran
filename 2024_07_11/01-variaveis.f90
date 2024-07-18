program variaveis
    integer :: idade
    logical :: maiorDeIdade

    print *, "Por favor, digite a sua idade."
    read(*,*) idade

    maiorDeIdade = idade >= 18

    print *, "A sua idade é ", idade, " anos."
    
    if (maiorDeIdade) then
        print *, "Você é maior de idade."
    else 
        print *, "Você é menor de idade."
    end if

end program variaveis