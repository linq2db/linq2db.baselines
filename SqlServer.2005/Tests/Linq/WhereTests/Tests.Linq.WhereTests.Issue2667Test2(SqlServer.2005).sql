BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NOT NULL)
	DROP TABLE [LinkedContracts]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NULL)
	CREATE TABLE [LinkedContracts]
	(
		[Id] Int NOT NULL,
		[FK] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [LinkedContracts]
(
	[Id],
	[FK]
)
SELECT 11,1 UNION ALL
SELECT 22,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract]', N'U') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract]', N'U') IS NULL)
	CREATE TABLE [Contract]
	(
		[Id]    Int NOT NULL,
		[Bit01] Bit     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Contract]
(
	[Id],
	[Bit01]
)
SELECT 1,NULL UNION ALL
SELECT 2,NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [vertrge]
		LEFT JOIN [Contract] [a_Ref] ON [vertrge].[FK] = [a_Ref].[Id]
WHERE
	[vertrge].[FK] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract]', N'U') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NOT NULL)
	DROP TABLE [LinkedContracts]

