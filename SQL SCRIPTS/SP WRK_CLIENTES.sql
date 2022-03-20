
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

USE DS_PROJECTS
GO

-- =============================================
-- Author:		DENISE MERAZZI
-- Create date: 20220316
-- Description:	PROCEDURE QUE CRIA A TAB WRK_CLIENTES
-- =============================================
ALTER PROCEDURE SP_WRK_CLIENTES 
	
AS
BEGIN

-- =============================================
-- DROP DA TABLE
-- =============================================

IF OBJECT_ID('WRK_CLIENTES') IS NOT NULL
DROP TABLE [dbo].[WRK_CLIENTES]

-- =============================================
-- CRIAÇÃO DA TABELA
-- =============================================
CREATE TABLE WRK_CLIENTES (
	   [Rownumber]		INT IDENTITY
	  ,[Customer ID]	VARCHAR(100)
      ,[City]			VARCHAR(100)
      ,[ZipCode]		VARCHAR(10)
      ,[Gender]			CHAR(1)
      ,[Age]			FLOAT
)

-- =============================================
--TRUNCATE DA TABELA
-- =============================================
TRUNCATE TABLE [dbo].[WRK_CLIENTES]
-- =============================================
-- INSERÇÃO DOS DADOS
-- =============================================
INSERT INTO [dbo].[WRK_CLIENTES]
(           [Customer ID]
           ,[City]
           ,[ZipCode]
           ,[Gender]
           ,[Age]
)
    
	SELECT 
       RIGHT ('0000000'+ [Customer ID],7)
      ,[City]
      ,[ZipCode]
      ,[Gender]
      ,[Age]
  FROM [DS_PROJECTS].[dbo].[RAW_Clientes_20220314]

END
GO
-- =============================================
--(43 rows affected)
-- =============================================