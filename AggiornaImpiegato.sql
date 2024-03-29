USE [Esercizio4]
GO
/****** Object:  StoredProcedure [dbo].[AggiornaImpiegato]    Script Date: 08/02/2024 18:26:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AggiornaImpiegato]
    @IDImpiegato INT,
    @Cognome NVARCHAR(30),
    @Nome NVARCHAR(30),
    @CodiceFiscale NVARCHAR(16),
    @Eta SMALLINT,
    @Salario MONEY,
    @Det_Fiscale BIT
AS
BEGIN
    UPDATE Impiegati
    SET Cognome = @Cognome, Nome = @Nome, CodiceFiscale = @CodiceFiscale, Eta = @Eta, Salario = @Salario, Det_Fiscale = @Det_Fiscale
    WHERE IDImpiegato = @IDImpiegato
END
