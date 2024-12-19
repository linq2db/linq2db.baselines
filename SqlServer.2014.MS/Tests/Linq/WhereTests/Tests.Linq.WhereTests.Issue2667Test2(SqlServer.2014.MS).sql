BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NOT NULL)
	DROP TABLE [LinkedContracts]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NULL)
	CREATE TABLE [LinkedContracts]
	(
		[Id] Int NOT NULL,
		[FK] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [LinkedContracts]
(
	[Id],
	[FK]
)
VALUES
(11,1),
(22,2)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Contract]', N'U') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Contract]', N'U') IS NULL)
	CREATE TABLE [Contract]
	(
		[Id]    Int NOT NULL,
		[Bit01] Bit     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Contract]
(
	[Id],
	[Bit01]
)
VALUES
(1,NULL),
(2,NULL)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [vertrge]
		LEFT JOIN [Contract] [a_Ref] ON [vertrge].[FK] = [a_Ref].[Id]
WHERE
	[vertrge].[FK] = 1

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Contract]', N'U') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NOT NULL)
	DROP TABLE [LinkedContracts]

