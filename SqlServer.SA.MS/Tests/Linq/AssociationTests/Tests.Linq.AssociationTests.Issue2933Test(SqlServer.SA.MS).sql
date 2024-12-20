BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Car]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2933Car]', N'U') IS NULL)
	CREATE TABLE [Issue2933Car]
	(
		[PersonId] Int     NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue2933Car] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Issue2933Car]
(
	[PersonId],
	[Id]
)
VALUES
(1,1),
(NULL,2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2933Person]', N'U') IS NULL)
	CREATE TABLE [Issue2933Person]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue2933Person] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Issue2933Person]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue2933Pet]', N'U') IS NULL)
	CREATE TABLE [Issue2933Pet]
	(
		[Name]     NVarChar(4000) NOT NULL,
		[Id]       Int            NOT NULL,
		[PersonId] Int            NOT NULL,

		CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Issue2933Pet]
(
	[Name],
	[Id],
	[PersonId]
)
VALUES
(N'Snuffles',1,1),
(N'Buddy',2,1)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	(
		SELECT TOP (1)
			[a_PetIds].[Name]
		FROM
			[Issue2933Pet] [a_PetIds]
		WHERE
			[a_Person].[Id] = [a_PetIds].[PersonId]
	)
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Pet]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Person]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue2933Car]

