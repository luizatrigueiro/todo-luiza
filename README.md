# Aplicação To Do List 
Uma aplicação web desenvolvida usando Ruby on Rails, com foco em organização de tarefas através de uma to-do list. Nela, é possível criar listas, adicionar tarefas e marcá-las como concluídas.

---

## Deploy
[Aplicação online](https://todo-luiza.onrender.com)

---

## Versão do Ruby
- ruby 3.4.3
- rails 8.0.2

---

## Dependências
- PostgreSQL
- Bundler (gem install bundler)
- Navegador moderno

---

## Configuração
- Antes de rodar a aplicação, crie o banco de dados:
  - bundle install
  - rails db:create db:migrate

---

## Serviços
- Render (deploy da aplicação)
- Bootstrap 5.3 (framework CSS)

--- 

## Organização
- Utilizei "Projects" do GitHub, na funcionalidade Kanban:
  -  Separei a produção por partes, como é mostrado no Kanban
    - Criei branches específicas para controle maior de cada funcionalidade   
      - "feature" para criar funcionalidades novas
      - "fix" para consertar erros
      - "infra" para adentrar a infraestrutura do projeto (como o deploy)
     
---

## Funcionalidades
- Criar, editar e excluir listas
- Criar, editar e excluir tarefas
- Marcar tarefas como concluídas
- Botão de retorno
- Estilização com Bootstrap para melhor usabilidade

---

## Como testar
- No Terminal, digite:
  - rails server
- Depois, acesse:
  - http://localhost:3000

---

## Desenvolvido por Luiza Trigueiro
- GitHub — @luizatrigueiro

