-- 2. Feladat
CREATE database konyvtaradatbazis
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_hungarian_ci;
-- 3. Feladat
USE konyvtaradatbazis;
-- 4. Fealdat
CREATE Table konyvek (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR,
    oldalszam INTEGER CHECK (oldalszam BETWEEN 20 and 2000),
    kategoria ENUM ('fantasy', 'sci-fi', 'krimi', 'disztópia', 'történelem'),
    ertekeles FLOAT DEFAULT 5.0
);