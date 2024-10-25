-- Criando DATABASE
CREATE DATABASE RosaPlane;

-- Criando tabela de Destinos
CREATE TABLE Destinos (
	id INT PRIMARY KEY AUTO_INCREMENT,	
	nomeDestino VARCHAR(100),
	pais VARCHAR(100),
	descrição VARCHAR(100)
);

-- Criando tabela de Pacotes
CREATE TABLE Pacotes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idDestino INT,
	nomePacote VARCHAR(100),
	Preço INT,
	dataInício DATE,
	dataTermino DATE,
	FOREIGN KEY (idDestino) REFERENCES Destinos(id)
);

-- Criando tabela de Clientes
CREATE TABLE Clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nomeCliente VARCHAR(100),
	email VARCHAR(100),
	telefone VARCHAR(100),
	endereço VARCHAR(100)
);

-- Criando tabela de Reservas
CREATE TABLE Reservas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
	idPacote INT,
	dataReserva DATE,
	numeroPessoas INT,
	statusReserva VARCHAR(200), -- (confirmada, pendente, cancelada)
	FOREIGN KEY (idCliente) REFERENCES Clientes(id),
    FOREIGN KEY (idPacote) REFERENCES Pacotes(id)
);

-- Inserindo Destinos
INSERT INTO Destinos (nomeDestino, pais, descrição) VALUES
('São Paulo', 'Brasil', 'Capital de SP'),
('Fortaleza', 'Brasil', 'Capital do CE'),
('Lisboa', 'Portugal', 'Capital de Portugal e conhecida por sua rica história e arquitetura'),
('Tóquio', 'Japão', 'Capital do Japão, famosa por sua cultura e modernidade'),
('Cidade do Cabo', 'África do Sul', 'Cidade costeira conhecida por suas montanhas e vinícolas'),
('Nova York', 'Estados Unidos', 'Cidade vibrante e multicultural, conhecida como a "cidade que nunca dorme"');

-- Inserindo Pacotes
INSERT INTO Pacotes (idDestino, nomePacote, Preço, dataInício, dataTermino) VALUES
(1, 'Pacote São Paulo Cultural', 1500.00, '2024-01-10', '2024-01-15'),
(2, 'Pacote Fortaleza Praias', 2000.00, '2024-02-05', '2024-02-10'),
(3, 'Pacote Lisboa Histórica', 2500.00, '2024-03-12', '2024-03-18'),
(4, 'Pacote Tóquio Tecnologia e Tradição', 4000.00, '2024-04-01', '2024-04-08'),
(5, 'Pacote Cidade do Cabo Aventura', 3500.00, '2024-05-10', '2024-05-17'),
(6, 'Pacote Nova York Cosmopolita', 3000.00, '2024-06-05', '2024-06-12');

-- Inserindo Clientes
INSERT INTO Clientes (nomeCliente, email, telefone, endereço) VALUES
('Maria Silva', 'maria.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo - SP'),
('João Pereira', 'joao.pereira@email.com', '(21) 91234-5678', 'Avenida Central, 456, Rio de Janeiro - RJ'),
('Ana Oliveira', 'ana.oliveira@email.com', '(31) 99876-5432', 'Rua dos Ipês, 789, Belo Horizonte - MG'),
('Carlos Souza', 'carlos.souza@email.com', '(41) 98765-4321', 'Alameda das Árvores, 101, Curitiba - PR'),
('Beatriz Lima', 'beatriz.lima@email.com', '(51) 97654-3210', 'Rua da Praia, 102, Porto Alegre - RS');

-- Inserindo Reservas
INSERT INTO Reservas (idCliente, idPacote, dataReserva, numeroPessoas, statusReserva) VALUES
(1, 1, '2023-12-01', 2, 'Confirmada'),
(2, 3, '2023-12-05', 1, 'Pendente'),
(3, 2, '2023-12-10', 4, 'Confirmada'),
(4, 4, '2023-12-15', 2, 'Cancelada'),
(5, 5, '2023-12-20', 3, 'Confirmada');

SELECT * FROM Destinos;
SELECT * FROM Pacotes;
SELECT * FROM Clientes;
SELECT * FROM Reservas;

