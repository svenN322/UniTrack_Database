CREATE DATABASE BD_PROYUSER;
USE BD_PROYUSER;

CREATE TABLE usuario (
  idUsuario INT AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE,
  codigo_estudiante VARCHAR(20) NOT NULL UNIQUE,
  contrasena VARCHAR(255) NOT NULL,
  correoA VARCHAR(50),
  carrera VARCHAR(50) NOT NULL,
  ciclo VARCHAR(50) NOT NULL,
  edad VARCHAR(50) NOT NULL,
  sexo VARCHAR(50) NOT NULL
);

CREATE TABLE administrador (
  idAdmin INT AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE,
  codigo_admin VARCHAR(20) NOT NULL UNIQUE,
  contrasena VARCHAR(255) NOT NULL,
  edad VARCHAR(50) NOT NULL,
  sexo VARCHAR(50) NOT NULL
);

CREATE TABLE reportes (
  idReporte INT AUTO_INCREMENT PRIMARY KEY,
  user_id VARCHAR(100) NOT NULL, 
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  modo VARCHAR(50),
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE alertas (
  idAlerta INT AUTO_INCREMENT PRIMARY KEY,
  user_id VARCHAR(100) NOT NULL,
  mensaje TEXT NOT NULL,
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS temp_logged_user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    modo VARCHAR(255) NOT NULL,
    correoA VARCHAR(255) NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE verificacion_codigo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    codigo VARCHAR(6) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(idUsuario)
);

SELECT * FROM verificacion_codigo;
SELECT * FROM temp_logged_user;
SELECT * FROM usuario;
SELECT * FROM administrador;
SELECT * FROM reportes;