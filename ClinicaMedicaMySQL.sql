CREATE DATABASE clinica_santa_rita;
USE clinica_santa_rita;

CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(255),
    convenio VARCHAR(255)
);
CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);
CREATE TABLE Administrador (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
CREATE TABLE Recepcionista (
    id_recepcionista INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
CREATE TABLE Medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    crm VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    horario TIME NOT NULL,
    motivo TEXT,
    id_paciente INT,
    id_medico INT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);
CREATE TABLE Prontuario (
    id_prontuario INT AUTO_INCREMENT PRIMARY KEY,
    historico TEXT,
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);
CREATE TABLE NotaMedica (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    descricao TEXT NOT NULL,
    id_prontuario INT,
    FOREIGN KEY (id_prontuario) REFERENCES Prontuario(id_prontuario)
);