#language:pt

Funcionalidade: Realizar login
 Como usuario do sistema 
 Quero realizar meu login com sucesso
 Para ter acesso ao meu perfil 

@login_sucesso
Esquema do Cenario: Realizar login com sucesso
 Quando clico na opção login 
 E faço login com <login> e <senha> 
 Então sou logada com sucesso

 Exemplos:
 | login                               | senha    |
 | "larissasitta.espinosa@hotmail.com" | "123456" |
 | "35101042854"                       | "123456" |

@login_invalido
Esquema do Cenario: Não realizar login com dados incorretos
 Quando clico na opção login 
 E faço login com <login> e <senha> 
 Então deve exibir uma mensagem de erro

 Exemplos:
 | login                          | senha     |
 | "larissa.espinosa@hotmail.com" | "123456"  |
 | "35101042854"                  | "1234567" |

@nao_preencher_campos
Esquema do Cenario: Não preencher os campos
 Quando clico na opção login 
 E faço login com <login> e <senha> 
 Então deve exibir um alerta <texto>

  Exemplos:
 | login         | senha    | texto                                                  |
 | ""            | ""       | "O Campo Login/E-mail não foi preenchido corretamente" |
 | ""            | "123456" | "O Campo Login/E-mail não foi preenchido corretamente" |
 | "35101042854" | ""       | "Senha não foi informada"                              |


