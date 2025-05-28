# Modelagem de Banco de Dados - Sistema de Livraria

Este diagrama representa a modelagem de banco de dados para um sistema simples de livraria, com três tabelas principais:

## Entidades e Atributos

### 📚 Produtos
- **id_produto** (PK)
- nome
- autor
- preco
- estoque

### 👤 Clientes
- **id_cliente** (PK)
- nome
- email
- telefone

### 📝 Pedidos
- **id_pedido** (PK)
- **id_produto** (FK)
- **id_cliente** (FK)
- quantidade
- data_pedido

## Relacionamentos

- **Produtos** → possui uma relação de 1:N com **Pedidos**.
- **Clientes** → possui uma relação de 1:N com **Pedidos**.

## Diagrama

![Diagrama ER do Sistema de Livraria](https://github.com/rafamar9806/dblivraria/blob/main/Captura%20de%20imagem_20250527_214818.png?raw=true)

---

## 🗂️ Observações

- A modelagem garante integridade referencial com uso de chaves estrangeiras.
- Simples, mas suficiente para operações básicas de cadastro de produtos, clientes e realização de pedidos.
