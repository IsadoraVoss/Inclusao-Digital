# Inclusão Digital para Idosos

## Visão Geral

Projeto acadêmico desenvolvido para a disciplina de Banco de Dados II com o objetivo de modelar e implementar um banco de dados relacional para gerenciamento de um programa de inclusão digital voltado à terceira idade.

O sistema permite o controle de alunos, turmas, instrutores, núcleos de atendimento, aulas e cronogramas, centralizando as informações necessárias para organização das atividades do projeto.

## Objetivos

- Gerenciar participantes do programa de inclusão digital.
- Organizar turmas e cronogramas de aulas.
- Controlar instrutores e núcleos de atendimento.
- Aplicar conceitos de modelagem relacional e integridade referencial.
- Realizar consultas analíticas para apoio à tomada de decisão.

## Tecnologias Utilizadas

- MySQL
- SQL
- MySQL Workbench
- Modelagem Relacional

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes entidades:

- **Turmas**
- **Alunos**
- **Instrutores**
- **Núcleos de Atendimento**
- **Aulas**
- **Cronograma**

### Principais Relacionamentos

- Uma turma possui vários alunos.
- Um instrutor pode ministrar diversas aulas.
- Um núcleo de atendimento pode receber diferentes turmas.
- Uma aula pode ocorrer em múltiplas datas.
- O cronograma relaciona aulas, instrutores, turmas e núcleos.

## Funcionalidades Implementadas

### Cadastro de Dados

- Turmas
- Alunos
- Instrutores
- Núcleos de Atendimento
- Aulas
- Cronogramas

### Consultas SQL

- Turmas vinculadas a uma determinada aula.
- Cronograma com informações descritivas.
- Média de idade dos alunos.
- Alunos acima da média de idade.
- Quantidade de alunos por núcleo de atendimento.

### Atualização de Registros

- Alteração de dados de alunos utilizando comandos UPDATE.

### Segurança

Implementação de controle de acesso utilizando:

- CREATE USER
- GRANT
- REVOKE
- FLUSH PRIVILEGES

## Conceitos Aplicados

- Modelagem de Banco de Dados
- Chaves Primárias (Primary Keys)
- Chaves Estrangeiras (Foreign Keys)
- Integridade Referencial
- Consultas com JOIN
- Subconsultas
- Funções de Agregação (AVG e COUNT)
- Controle de Permissões e Usuários

## Estrutura do Repositório

.

├── README.md

├── inclusao_digital.sql

├── docs/

└── imagens/


## Aprendizados

Este projeto permitiu a aplicação prática de conceitos de modelagem de dados, desenvolvimento de consultas SQL, gerenciamento de relacionamentos entre entidades e implementação de mecanismos básicos de segurança em bancos de dados relacionais.

## Autora

**Isadora Voss Brugnera**

Estudante de Sistemas de Informação 

