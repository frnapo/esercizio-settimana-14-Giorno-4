USE [Esercizio4]
GO
/****** Object:  StoredProcedure [dbo].[EliminaImpiegato]    Script Date: 08/02/2024 18:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EliminaImpiegato]
    @IDImpiegato INT
AS
BEGIN
    DELETE FROM Impiegati
    WHERE IDImpiegato = @IDImpiegato
END
