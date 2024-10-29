BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [LinkedContracts]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[LinkedContracts]', N'U') IS NULL)
	CREATE TABLE [LinkedContracts]
	(
		[Id] Int NOT NULL,
		[FK] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [LinkedContracts]
(
	[Id],
	[FK]
)
VALUES
(11,1),
(22,2)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Contract]', N'U') IS NULL)
	CREATE TABLE [Contract]
	(
		[Id]    Int NOT NULL,
		[Bit01] Bit     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Contract]
(
	[Id],
	[Bit01]
)
VALUES
(1,NULL),
(2,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [vertrge]
		LEFT JOIN [Contract] [a_Ref] ON [vertrge].[FK] = [a_Ref].[Id]
WHERE
	[vertrge].[FK] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [LinkedContracts]

