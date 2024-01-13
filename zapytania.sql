-- Tworzenie procedury
DELIMITER //

CREATE PROCEDURE PobierzPracownikowNaStanowisku(IN stanowisko_param VARCHAR(30))
BEGIN
    SELECT * FROM PRACOWNICY WHERE stanowisko = stanowisko_param;
END //

DELIMITER ;

-- Zapytania Agregujące

-- Liczba pracowników
SELECT COUNT(*) AS 'liczba pracowników' FROM PRACOWNICY;

-- Sumowanie opłat cmentarnych
SELECT SUM(kwota) AS 'suma opłat' FROM OPLATY_CMENTARNE;

-- Średni wiek nieboszczyków na cmentarzu
SELECT AVG(YEAR(CURDATE()) - YEAR(data_urodzenia)) AS sredni_wiek FROM NIEBOSZCZYK;

-- Łączna liczba pracowników na danym stanowisku
SELECT stanowisko, COUNT(*) AS liczba_pracownikow FROM PRACOWNICY GROUP BY stanowisko;

-- Najnowsze zdarzenie dla danego grobu
SELECT grob_id, MAX(data_zdarzenia) AS najnowsze_zdarzenie FROM HISTORIA_GROBU GROUP BY grob_id;

-- Double Join, wyświetla imię nazwisko i miejsce, w którym został pochowany nieboszczyk
SELECT NIEBOSZCZYK.imie, NIEBOSZCZYK.nazwisko, GROB.numer_grobu
FROM NIEBOSZCZYK
JOIN N_G ON NIEBOSZCZYK.id = N_G.nieboszczyk_id
JOIN GROB ON N_G.grob_id = GROB.id;

-- Insert, dodaje dwóch nowych nieboszczyków do tabeli
INSERT INTO NIEBOSZCZYK (imie, nazwisko, data_urodzenia, data_smierci)
VALUES ('Marek', 'Lewańczyk', '2003-05-22', '2022-01-14'), 
       ('Kasia', 'Kasperek', '2002-01-16', '2022-01-14');

-- Delete, usuwa rekordy gdzie imię to Kasia
DELETE FROM NIEBOSZCZYK
WHERE imie = 'Kasia';

-- Update
UPDATE NIEBOSZCZYK
SET imie = 'Marcin', nazwisko = 'Jakubowski'
WHERE imie = 'Marek' AND nazwisko = 'Lewańczyk';

-- Trigger
DELIMITER //
CREATE TRIGGER sprawdz_data_smierci
BEFORE INSERT ON NIEBOSZCZYK
FOR EACH ROW
BEGIN
  IF NEW.data_urodzenia > NEW.data_smierci THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Data śmierci nie może być późniejsza niż data urodzenia';
  END IF;
END;
//
DELIMITER ;
