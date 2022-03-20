/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Customer ID]
      ,[City]
      ,[ZipCode]
      ,[Gender]
      ,[Age]
  FROM [DS_PROJECTS].[dbo].[RAW_Clientes_20220314]