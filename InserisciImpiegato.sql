USE [Esercizio4]
GO
/****** Object:  StoredProcedure [dbo].[InserisciImpiegato]    Script Date: 08/02/2024 18:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InserisciImpiegato]
    @Cognome NVARCHAR(30),
    @Nome NVARCHAR(30),
    @CodiceFiscale NVARCHAR(16),
    @Eta SMALLINT,
    @Salario MONEY,
    @Det_Fiscale BIT
AS
BEGIN
    INSERT INTO Impiegati (Cognome, Nome, CodiceFiscale, Eta, Salario, Det_Fiscale)
    VALUES (@Cognome, @Nome, @CodiceFiscale, @Eta, @Salario, @Det_Fiscale)
END
