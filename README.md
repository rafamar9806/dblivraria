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

![Diagrama ER do Sistema de Livraria](https://via.placeholder.com/600x400.png?text=Modelo+ER+Livraria)

> _Clique na imagem para visualizar o modelo de dados._

---

## 🗂️ Observações

- A modelagem garante integridade referencial com uso de chaves estrangeiras.
- Simples, mas suficiente para operações básicas de cadastro de produtos, clientes e realização de pedidos.

