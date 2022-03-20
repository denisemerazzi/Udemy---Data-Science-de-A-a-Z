SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
USE DS_PROJECTS
GO
-- =============================================
-- Author:		DENISE MERAZZI
-- Create date: 20220317
-- Description:	CRIAÇÃO DA TABELA WRK_TRANSACOES
-- =============================================
ALTER PROCEDURE SP_WRK_TRANSACOES 
AS
BEGIN
	
  -- =============================================
  -- DROP DA TABLE
  -- =============================================
    
  -- =============================================
  -- CRIAÇÃO DA TABELA
  -- =============================================
  CREATE TABLE WRK_TRANSACOES
  (
         [RowNumber]		INT IDENTITY
  	    ,[Order_ID]		VARCHAR(100)
        ,[Order_Date]		DATE
        ,[Customer_ID]	NUMERIC
        ,[Region]			VARCHAR(100)
        ,[Rep]			VARCHAR(100)
        ,[Item]			VARCHAR(100)
        ,[Units]			NUMERIC
        ,[Unit_Price]		FLOAT
  )
  
  
  -- =============================================
  -- TRUNCATE DA TABELA
  -- =============================================
  TRUNCATE TABLE [dbo].[WRK_TRANSACOES]
  -- =============================================
  -- INSERÇÃO DA TABLE
  -- =============================================
  INSERT INTO [dbo].[WRK_TRANSACOES]
  ( 
         [Order_ID]	
        ,[Order_Date]		
        ,[Customer_ID]	
        ,[Region]			
        ,[Rep]			
        ,[Item]			
        ,[Units]			
        ,[Unit_Price]		
  )
   SELECT 
  			[Order_ID]	
  			,[Order_Date]	
            ,RIGHT('0000000' + [Customer_ID],7)
            ,[Region]			
  			,[Rep]			
  			,[Item]			
  			,[Units]			
  			,[Unit_Price]	
  FROM [DS_PROJECTS].[dbo].[RAW_Transacoes_20220314]

END
GO
