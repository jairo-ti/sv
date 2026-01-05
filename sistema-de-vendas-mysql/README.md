# 📦 Sistema de Vendas – Projeto MySQL

## 📌 Descrição do Projeto

Este projeto consiste em um Sistema de Vendas relacional, desenvolvido utilizando MySQL, com foco em boas práticas de modelagem de dados e consultas SQL.

O sistema simula o funcionamento básico de uma loja, contemplando clientes, produtos, pedidos e os itens dos pedidos.

---

## 🛠️ Tecnologias Utilizadas

* MySQL 8+
* MySQL Workbench 
* SQL

---

## 🗂️ Estrutura do Banco de Dados

O banco é composto pelas seguintes tabelas:

### 👤 clientes

Armazena os dados dos clientes cadastrados.

* id_cliente (PK)
* nome
* email
* cpf (único)
* data_cadastro

### 🏷️ categorias

Classificação dos produtos.

* id_categoria (PK)
* nome_categoria

### 📦 produtos

Armazena os produtos disponíveis para venda.

* id_produto (PK)
* nome
* preco
* estoque
* id_categoria (FK)

### 🧾 pedidos

Representa os pedidos realizados pelos clientes.

* id_pedido (PK)
* data_pedido
* status (ABERTO, PAGO, CANCELADO, FINALIZADO)
* id_cliente (FK)

### 🧮 itens_pedido

Tabela associativa entre pedidos e produtos.

* id_item (PK)
* id_pedido (FK)
* id_produto (FK)
* quantidade
* preco_unitario
* UNIQUE (id_pedido, id_produto)

---

## 🔄 Relacionamentos

* Um cliente pode ter vários pedidos (1:N)
* Um pedido pode conter vários produtos (N:N)
* A relação N:N é resolvida pela tabela itens_pedido
* Cada produto pertence a uma categoria

---

## 📊 Principais Funcionalidades

* Cadastro de clientes, produtos e categorias
* Criação de pedidos
* Inclusão de múltiplos produtos em um pedido
* Controle de status do pedido
* Cálculo de totais e faturamento

---

## 📈 Consultas SQL Implementadas

1. Listagem de pedidos com seus respectivos clientes
2. Listagem de produtos de um pedido específico
3. Produtos presentes em pedidos
4. Total de cada pedido
5. Total de um pedido específico
6. Faturamento total da loja
7. Pedidos por status (abertos, cancelados, pagos e finalizados)

---

## ▶️ Como Executar o Projeto

1. Execute o script `01_create_database.sql`
2. Execute os scripts da pasta `sql/` na ordem numérica
3. Utilize o arquivo `04_consultas.sql` para testes

---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido com foco em aprendizado prático e simula um cenário real de sistema de vendas utilizado no mercado.

---

## 👨‍💻 Autor

Jairo Rocha

---


