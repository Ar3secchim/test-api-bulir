# Decisões de projetos

## 1. Requisitos & Funcionalidades Básicas

### 1.1 Cadastro de Usuarios

- [x] Dados necessários: Nome Completo, NIF, E-mail, Senha.
- [x] NIF e E-mail devem ser únicos no sistema.
- [x] Tipos de usuário: Cliente, Prestador.

### 1.2. Autenticação e Autorização

- [ ] Usuários devem se autenticar para acessar a API.
- [ ] Utilizar JWT para autenticação.

### 1.3. Gerenciamento Gestão de Serviços

- [ ] Prestadores podem criar serviços que oferecem.
- [ ] Cada serviço deve ter um título, descrição, preço e prestador associado.

### 1.4 Contratação de Serviços

- [ ]  Clientes podem contratar serviços de prestadores.
- [ ]  Antes da contratação, verificar se o cliente tem saldo suficiente.
- [ ]  Atualizar o saldo do cliente e do prestador após a contratação.

## 2. Funcionalidades Avançadas

### 2.1. Historico de Transações

- [ ] Manter um histórico de todas as transações realizadas na plataforma.

### 2.2. Validações

- [ ] Verificar se o usuário autenticado tem permissão para criar, atualizar ou
excluir um serviço.
- [ ] Garantir que o saldo do cliente seja atualizado de forma atômica.
