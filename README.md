# Login Test

## Informações
Versão Google chrome: 84.0.4147.105 
<br>
Versão Firefox: 79.0

## Executar testes
### Navegador escolhido
Para testar com o navegador escolhido é necessário passar o paramêtro.
<br>
Exemplo: firefox, chrome, headless
<br>
<code>cucumber -p navegadorescolhido </code>

### Cenário Específico
Para testar um cenário específico:
<br>
<code>cucumber --tags @cenario</code>

### Executando com os dois paramêtros
<code>cucumber -p firefox --tags @login_sucesso</code>
