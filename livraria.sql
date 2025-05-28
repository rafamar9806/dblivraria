CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);


CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_produto INT,
    id_cliente INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);


INSERT INTO Produtos (id_produto, nome, autor, preco, estoque) VALUES
(1, 'Dom Quixote', 'Miguel de Cervantes', 39.90, 10),
(2, '1984', 'George Orwell', 29.90, 15),
(3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 25.50, 20);

INSERT INTO Clientes (id_cliente, nome, email, telefone) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', '(11) 99999-1234'),
(2, 'Carlos Souza', 'carlos.souza@email.com', '(11) 98888-5678'),
(3, 'Beatriz Lima', 'beatriz.lima@email.com', '(11) 97777-9101');


INSERT INTO Pedidos (id_pedido, id_produto, id_cliente, quantidade, data_pedido) VALUES
(1, 1, 1, 2, '2025-05-27'),
(2, 3, 2, 1, '2025-05-26'),
(3, 2, 3, 3, '2025-05-25');
