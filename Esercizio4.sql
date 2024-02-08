-- 1. Creare le relazioni tra le due tabelle applicando la corretta integrit‡ referenziale

--CREATE TABLE Impiegati (
--IDImpiegato INT IDENTITY NOT NULL PRIMARY KEY,
--Cognome NVARCHAR(30) NOT NULL,
--Nome NVARCHAR(30) NOT NULL,
--CodiceFiscale NVARCHAR(16) NOT NULL UNIQUE,
--Eta SMALLINT NOT NULL,
--Salario MONEY NOT NULL,
--Det_Fiscale BIT NOT NULL
--)

--CREATE TABLE Impieghi (
--    IDImpiego INT IDENTITY NOT NULL PRIMARY KEY,
--    IDImpiegato INT,
--    TipoImpiego NVARCHAR(50),
--    DataAssunzione DATE,
--    FOREIGN KEY (IDImpiegato) REFERENCES Impiegati(IDImpiegato)
--);


-- 2. Popolare le tabelle con almeno 20 impiegati e i relativi dati dellíimpiego,

--INSERT INTO Impiegati (Cognome, Nome, CodiceFiscale, Eta, Salario, Det_Fiscale)
--VALUES
--('Rossi', 'Marco', 'RSSMRC80A01F205Z', 42, 1800.00, 1),
--('Bianchi', 'Anna', 'BNCHNA75E42F839J', 47, 1500.00, 0),
--('Verdi', 'Luigi', 'VRDLGI68D13A001S', 54, 2200.00, 1),
--('Neri', 'Paola', 'NERIPL62C44Z100H', 60, 1300.00, 1),
--('Gialli', 'Federico', 'GLLFRC83M14G123K', 37, 2000.00, 0),
--('Viola', 'Sofia', 'VLSFA89H56L219V', 33, 1700.00, 1),
--('Azzurri', 'Giuseppe', 'AZZGPP77S25H501M', 45, 1900.00, 1),
--('Marroni', 'Elena', 'MRRELN82P65D612P', 40, 2100.00, 0),
--('Arancio', 'Michele', 'ARNMHL69L01Z404X', 53, 2300.00, 1),
--('Celesti', 'Teresa', 'CLSTSR71A41E512C', 51, 1400.00, 0),
--('Fucsia', 'Roberto', 'FCSRRT58B22H501Q', 65, 1600.00, 1),
--('Grigio', 'Alice', 'GRGALC90M50Z600J', 32, 1750.00, 1),
--('Lilla', 'Franco', 'LLLFNC95R30E512K', 27, 1400.00, 0),
--('Magenta', 'Laura', 'MGTLRA88D44A001V', 34, 1950.00, 1),
--('Ocra', 'Davide', 'OCRDVD82M01F205N', 41, 2100.00, 0),
--('Pervinca', 'Sara', 'PRVSRH73D55G912D', 49, 1500.00, 1),
--('Rosso', 'Matteo', 'RSSMTT76E14L219Z', 46, 1350.00, 0),
--('Turchese', 'Silvia', 'TRCSLV81A08F839W', 42, 1850.00, 1),
--('Zafferano', 'Luca', 'ZFFLCU79R22Z100X', 44, 1600.00, 0),
--('Melanzana', 'Giulia', 'MLZGLI85M65E512F', 38, 1450.00, 1);

--INSERT INTO Impieghi (IDImpiegato, TipoImpiego, DataAssunzione)
--VALUES
--(1, 'Contabile', '2021-01-15'),
--(2, 'Analista IT', '2021-02-01'),
--(3, 'Responsabile HR', '2021-02-15'),
--(4, 'Assistente amministrativo', '2021-03-01'),
--(5, 'Sviluppatore software', '2021-03-15'),
--(6, 'Ingegnere meccanico', '2021-04-01'),
--(7, 'Project manager', '2021-04-15'),
--(8, 'Analista finanziario', '2021-05-01'),
--(9, 'Specialista SEO', '2021-05-15'),
--(10, 'Consulente legale', '2021-06-01'),
--(11, 'Tecnico di laboratorio', '2021-06-15'),
--(12, 'Infermiere', '2021-07-01'),
--(13, 'Marketing manager', '2021-07-15'),
--(14, 'Direttore vendite', '2021-08-01'),
--(15, 'Assistente di volo', '2021-08-15'),
--(16, 'Cuoco', '2021-09-01'),
--(17, 'Barista', '2021-09-15'),
--(18, 'Operatore di call center', '2021-10-01'),
--(19, 'Guida turistica', '2021-10-15'),
--(20, 'Fotografo', '2021-11-01');

--3. Successivamente creare le seguenti interrogazioni per mezzo di T-SQL

--a. Visualizzare tutti gli impiegati oltre i 29 anni; 
--SELECT * FROM Impiegati
--WHERE Eta > 29

--b. Visualizzare tutti gli impiegati con un reddito di almeno 800 euro mensili; 
--SELECT * FROM Impiegati
--WHERE Salario >= 2000

--c. Visualizzare tutti gli impiegati che posseggono la detrazione fiscale; 
--SELECT * FROM Impiegati
--WHERE Det_Fiscale = 1

--d. Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale; 
--SELECT * FROM Impiegati
--WHERE Det_Fiscale = 0

--e. Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico; 
--SELECT * FROM Impiegati
--WHERE Cognome LIKE 'G%'
--ORDER BY Cognome ASC;

--f. Visualizzare il numero totale degli impiegati registrati nella base dati; 
--SELECT COUNT(*) AS TotaleImpiegati
--FROM Impiegati

--g. Visualizzare il totale dei redditi mensili di tutti gli impiegati; 
--SELECT SUM(Salario) AS TotaleRedditi
--FROM Impiegati

--h. Visualizzare la media dei redditi mensili di tutti gli impiegati; 
--SELECT AVG(Salario) AS MediaRedditi
--FROM Impiegati

--i. Visualizzare líimporto del reddito mensile maggiore; 
--SELECT MAX(Salario) AS MaxReddito
--FROM Impiegati

--j. Visualizzare líimporto del reddito mensile minore; 
--SELECT MIN(Salario) AS MinReddito
--FROM Impiegati

--k. Visualizzare gli impiegati assunti dallí 01/01/2007 allí 01/01/2008; 
--SELECT Impiegati.*
--FROM Impiegati
--JOIN Impieghi ON Impiegati.IDImpiegato = Impieghi.IDImpiegato
--WHERE Impieghi.DataAssunzione BETWEEN '2007-01-01' AND '2008-12-01';

--l. Tramite una query parametrica che identifichi il tipo di impiego, visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego; 
--SELECT Impiegati.*
--FROM Impiegati
--JOIN Impieghi ON Impiegati.IDImpiegato = Impieghi.IDImpiegato
--WHERE Impieghi.TipoImpiego = 'Cuoco';

--m. Visualizzare líet‡ media dei lavoratori allíinterno dellíazienda. 
--SELECT AVG(Eta) AS Et‡Media
--FROM Impiegati;