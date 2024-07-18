# `aprendendo-ao-vivo-fortran`

📹 Da série "Aprendendo Ao Vivo" de [Programação Popular](https://youtube.com/@programacaopopular). Lives semanais em que eu aprendo Fortran ao vivo.

⭐ Dê uma conferida no repositório principal do Canal (dá uma estrela?): [hellmrf/programacaopopular](https://github.com/hellmrf/programacaopopular)

## Rodando na sua máquina

Para executar os códigos em sua máquina, é necessário:

- Um compilador Fortran (recomendamos [GFortran]((https://fortran-lang.org/pt/learn/os_setup/install_gfortran)))
- Um editor de código compatível (recomendamos o [Visual Studio Code](https://code.visualstudio.com/) com a extensão [Modern Fortran](https://marketplace.visualstudio.com/items?itemName=fortran-lang.linter-gfortran))

### Linux

- **Compilador**: Veja as [instruções de instalação do GFortran (em inglês)](https://fortran-lang.org/pt/learn/os_setup/install_gfortran/#linux) ou [clique aqui](https://fortran--lang-org.translate.goog/pt/learn/os_setup/install_gfortran/?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=wapp#linux) para ver a tradução.

Para compilar, por exemplo, o código no arquivo [`2024_07_11/00-hello.f90`](./2024_07_11/00-hello.f90), use o seguinte comando na raiz do projeto:

```bash
$ gfortran 2024_07_11/00-hello.f90 -o 00-hello
```

Isso gerará um arquivo `./00-hello`. Confira com 

```bash
$ file 00-hello

00-hello: ELF 64-bit LSB pie executable, x86-64...
```

"`ELF ... executable`" indica que temos um executável de Linux. Para executar:

```bash
$ ./00-hello

 Olá mundo
```

Podemos compilar e executar com um único comando:

```bash
gfortran 2024_07_11/00-hello.f90 -o 00-hello && ./00-hello
```

### Windows
Para Windows, nós recomendamos fortemente a instalação do [Windows Subsystem for Linux (WSL2)](https://learn.microsoft.com/pt-br/windows/wsl/install) e, a partir do WSL, usar os guias de Linux.

Caso não queria usar WSL2, pode usar [MinGW](https://www.mingw-w64.org/downloads/#mingw-builds).

1. Instalar MinGW: Baixe [daqui](https://github.com/niXman/mingw-builds-binaries/releases), descompacte onde preferir.
2. Compilar um código Fortran com MinGW:
    1. Abra o terminal MinGW e navegue até o diretório do projeto.
    2. Use o comando `gfortran` similar ao exemplo de Linux para compilar e executar o código.

O executável do compilador ficará em `mingw64\bin\gfortran.exe`.

**Nota**: ao compilar para Windows, use o nome do executável com `.exe`, por exemplo:
```bash
$ gfortran 00-hello.f90 -o hello.exe # Compila

$ ./hello.exe # Executa
```


## Autor

Este projeto é desenvolvido por [Heliton Martins](https://github.com/hellmrf), fundador e produtor de [Programação Popular](https://youtube.com/@programacaopopular).