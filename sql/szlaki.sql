CREATE SCHEMA IF NOT EXISTS nazwa_bazy_danych;

USE nazwa_bazy_danych;

CREATE TABLE IF NOT EXISTS Szlaki (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100),
    dlugosc FLOAT,
    trudnosc VARCHAR(50),
    region VARCHAR(100),
    punkty_startowe INT,
    punkty_koncowe INT
);

CREATE TABLE IF NOT EXISTS PunktySzlakow (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100),
    szerokosc_geo FLOAT,
    dlugosc_geo FLOAT,
    wysokosc INT,
    opis VARCHAR(200),
    szlak_id INT,
    FOREIGN KEY (szlak_id) REFERENCES Szlaki(id)
);

INSERT INTO Szlaki (nazwa, dlugosc, trudnosc, region, punkty_startowe, punkty_koncowe)
VALUES
    ('Szlak Górski', 10.5, 'Trudny', 'Tatry', 1, 1),
    ('Szlak Leśny', 8.2, 'Średni', 'Bieszczady', 2, 2),
    ('Szlak Nadmorski', 15.0, 'Łatwy', 'Pomorze Zachodnie', 1, 1),
    ('Szlak Wodospadów', 12.7, 'Średni', 'Karkonosze', 1, 1),
    ('Szlak Doliną Rzeki', 20.3, 'Łatwy', 'Pieniny', 1, 1),
    ('Szlak Jurajski', 25.8, 'Trudny', 'Jura Krakowsko-Częstochowska', 2, 2),
    ('Szlak Przez Kotlinę', 6.4, 'Średni', 'Bieszczady', 3, 4),
    ('Szlak Nad Jeziorem', 9.1, 'Łatwy', 'Kaszuby', 6, 7);

INSERT INTO PunktySzlakow (nazwa, szerokosc_geo, dlugosc_geo, wysokosc, opis, szlak_id)
VALUES
    ('Przełęcz Rozdroże', 49.183, 20.065, 1200, 'Piękne widoki na Tatry.', 1),
    ('Jezioro Czarne', 49.103, 22.375, 450, 'Malownicze jezioro w Bieszczadach.', 2),
    ('Latarnia Morska', 54.408, 14.119, 50, 'Historyczna latarnia morska.', 3),
    ('Schronisko PTTK', 49.204, 20.023, 1300, 'Przytulne schronisko górskie.', 1),
    ('Wodospad Szumiący', 50.763, 15.739, 800, 'Piękny wodospad w Karkonoszach.', 4),
    ('Polana pod Reglami', 49.335, 20.085, 1000, 'Przepiękne widoki na Tatry.', 1),
    ('Jaskinia Raj', 49.368, 20.454, 320, 'Ciekawa jaskinia w Pieninach.', 5),
    ('Wąwóz Smocza Jama', 50.272, 19.381, 450, 'Malowniczy wąwóz w Jurze Krakowsko-Częstochowskiej.', 6),
    ('Skała Wspinaczkowa', 50.102, 19.789, 600, 'Idealne miejsce dla miłośników wspinaczki.', 6),
    ('Schronisko Górskie', 49.118, 22.361, 980, 'Przytulne schronisko w Bieszczadach.', 7),
    ('Wzgórze Widokowe', 49.123, 22.381, 750, 'Panoramiczne widoki na okolicę.', 7),
    ('Pole Namiotowe', 54.210, 17.987, 20, 'Przytulne pole namiotowe nad jeziorem.', 8),
    ('Wioska Rybacka', 54.209, 17.991, 10, 'Tradycyjna wioska rybacka.', 8);