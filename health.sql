

/**
-- Crear la base de datos HealthTechInnovations
CREATE DATABASE HealthTechInnovations;

-- Usar la base de datos HealthTechInnovations
USE HealthTechInnovations;

-- Crear la tabla de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Telefono VARCHAR(20),
    Correo VARCHAR(100),
    FechaRegistro DATE
);

-- Crear la tabla de Servicios
CREATE TABLE Servicios (
    ServicioID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion TEXT,
    Precio DECIMAL(10, 2)
);

-- Crear la tabla de Citas
CREATE TABLE Citas (
    CitaID INT PRIMARY KEY,
    ClienteID INT,
    ServicioID INT,
    FechaHora DATETIME,
    DuracionMinutos INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ServicioID) REFERENCES Servicios(ServicioID)
);

-- Crear la tabla de Empleados
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Especialidad VARCHAR(100),
    Telefono VARCHAR(20),
    Correo VARCHAR(100)
);

-- Crear la tabla de Ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY,
    ClienteID INT,
    FechaVenta DATE,
    MontoTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Crear la tabla de Detalles de Ventas
CREATE TABLE DetallesVenta (
    DetalleVentaID INT PRIMARY KEY,
    VentaID INT,
    ServicioID INT,
    Cantidad INT,
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
    FOREIGN KEY (ServicioID) REFERENCES Servicios(ServicioID)
);


**/
-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Telefono, Correo, FechaRegistro)
VALUES
    (1, 'Laura', 'Gómez', '809-111-1111', 'laura@example.com', '2023-08-15'),
    (2, 'Carlos', 'Martínez', '809-222-2222', 'carlos@example.com', '2023-08-15'),
    (3, 'Sofía', 'Ramírez', '809-333-3333', 'sofia@example.com', '2023-08-15'),
    (4, 'Luis', 'Hernández', '809-444-4444', 'luis@example.com', '2023-08-15'),
    (5, 'Ana', 'García', '809-555-5555', 'ana@example.com', '2023-08-15'),
    (6, 'Miguel', 'Díaz', '809-666-6666', 'miguel@example.com', '2023-08-15'),
    (7, 'María', 'López', '809-777-7777', 'maria@example.com', '2023-08-15'),
    (8, 'Pedro', 'Fernández', '809-888-8888', 'pedro@example.com', '2023-08-15'),
    (9, 'Isabel', 'Torres', '809-999-9999', 'isabel@example.com', '2023-08-15'),
    (10, 'David', 'Castillo', '809-000-0000', 'david@example.com', '2023-08-15');

-- Insertar datos en la tabla Servicios
INSERT INTO Servicios (ServicioID, Nombre, Descripcion, Precio)
VALUES
    (1, 'Consulta Médica', 'Consulta médica con especialista', 500.00),
    (2, 'Monitoreo en Línea', 'Monitoreo de salud en tiempo real', 800.00),
    (3, 'Plan Nutricional', 'Plan nutricional personalizado', 600.00),
    (4, 'Programa de Ejercicios', 'Programa de ejercicios personalizado', 700.00),
    (5, 'Telemedicina', 'Consultas médicas a distancia', 400.00),
    (6, 'Aplicación de Salud', 'Aplicación móvil para el seguimiento de la salud', 300.00),
    (7, 'Plan de Bienestar', 'Plan integral de bienestar y salud', 1000.00),
    (8, 'Terapia en Línea', 'Terapia psicológica en línea', 900.00),
    (9, 'Control de Enfermedades', 'Programa de control de enfermedades crónicas', 750.00),
    (10, 'Gestión de Medicamentos', 'Plataforma para el seguimiento de medicamentos', 350.00);

-- Insertar datos en la tabla Citas
INSERT INTO Citas (CitaID, ClienteID, ServicioID, FechaHora, DuracionMinutos)
VALUES
    (1, 1, 1, '2023-08-16 10:00:00', 30),
    (2, 2, 2, '2023-08-17 14:30:00', 45),
    (3, 3, 3, '2023-08-18 11:00:00', 60),
    (4, 4, 4, '2023-08-19 15:00:00', 40),
    (5, 5, 5, '2023-08-20 12:30:00', 20),
    (6, 6, 6, '2023-08-21 16:30:00', 50),
    (7, 7, 7, '2023-08-22 09:30:00', 35),
    (8, 8, 8, '2023-08-23 13:00:00', 55),
    (9, 9, 9, '2023-08-24 17:00:00', 25),
    (10, 10, 10, '2023-08-25 10:30:00', 90);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (EmpleadoID, Nombre, Apellido, Especialidad, Telefono, Correo)
VALUES
    (1, 'Juan', 'Martínez', 'Médico General', '809-111-1111', 'juan@example.com'),
    (2, 'Ana', 'García', 'Nutricionista', '809-222-2222', 'ana@example.com'),
    (3, 'Carlos', 'López', 'Entrenador Personal', '809-333-3333', 'carlos@example.com'),
    (4, 'María', 'Ramírez', 'Psicóloga', '809-444-4444', 'maria@example.com'),
    (5, 'Pedro', 'Fernández', 'Desarrollador de Aplicaciones', '809-555-5555', 'pedro@example.com'),
    (6, 'Sofía', 'Díaz', 'Dietista', '809-666-6666', 'sofia@example.com'),
    (7, 'Miguel', 'Torres', 'Especialista en Telemedicina', '809-777-7777', 'miguel@example.com'),
    (8, 'Laura', 'López', 'Terapeuta en Línea', '809-888-8888', 'laura@example.com'),
    (9, 'Carlos', 'Gómez', 'Programador de Software', '809-999-9999', 'carlos@example.com'),
    (10, 'Isabel', 'Hernández', 'Analista de Datos de Salud', '809-000-0000', 'isabel@example.com');

-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (VentaID, ClienteID, FechaVenta, MontoTotal)
VALUES
    (1, 1, '2023-08-15', 500.00),
    (2, 2, '2023-08-16', 800.00),
    (3, 3, '2023-08-17', 600.00),
    (4, 4, '2023-08-18', 700.00),
    (5, 5, '2023-08-19', 400.00),
    (6, 6, '2023-08-20', 300.00),
    (7, 7, '2023-08-21', 1000.00),
    (8, 8, '2023-08-22', 900.00),
    (9, 9, '2023-08-23', 750.00),
    (10, 10, '2023-08-24', 350.00);

-- Insertar datos en la tabla DetallesVenta
INSERT INTO DetallesVenta (DetalleVentaID, VentaID, ServicioID, Cantidad, Subtotal)
VALUES
    (1, 1, 1, 1, 500.00),
    (2, 2, 2, 1, 800.00),
    (3, 3, 3, 1, 600.00),
    (4, 4, 4, 1, 700.00),
    (5, 5, 5, 1, 400.00),
    (6, 6, 6, 1, 300.00),
    (7, 7, 7, 1, 1000.00),
    (8, 8, 8, 1, 900.00),
    (9, 9, 9, 1, 750.00),
    (10, 10, 10, 1, 350.00);
