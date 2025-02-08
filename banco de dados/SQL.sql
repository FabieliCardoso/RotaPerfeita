CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(255) NOT NULL,
    cpf_cliente VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(15)
);

CREATE TABLE reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    status_reserva VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    quantidade_pessoas INT NOT NULL,
    id_cliente INT,
    id_pacote INT,
    id_destino INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_pacote) REFERENCES pacotes(id_pacote),
    FOREIGN KEY (id_destino) REFERENCES destinos(id_destino)
);

CREATE TABLE pacotes (
    id_pacote INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    desconto DECIMAL(5, 2) DEFAULT 0
);

CREATE TABLE destinos (
    id_destino INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);
