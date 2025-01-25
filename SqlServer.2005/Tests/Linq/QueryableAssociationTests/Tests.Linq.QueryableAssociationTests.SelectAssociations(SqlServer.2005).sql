BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Entity]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NOT NULL)
	DROP TABLE [Entity2Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NULL)
	CREATE TABLE [Entity2Language]
	(
		[Id]         Int NOT NULL,
		[EntityId]   Int NOT NULL,
		[LanguageId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Entity2Language]
(
	[Id],
	[EntityId],
	[LanguageId]
)
SELECT 1,1,1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Language]
(
	[Id],
	[Name]
)
SELECT 1,N'English'

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[x].[Id],
	[t1].[LanguageId],
	[a_Language].[Name]
FROM
	[Entity] [x]
		LEFT JOIN (
			SELECT
				[a_Entity2Language].[LanguageId],
				ROW_NUMBER() OVER (PARTITION BY [a_Entity2Language].[EntityId] ORDER BY [a_Entity2Language].[EntityId]) as [rn],
				[a_Entity2Language].[EntityId]
			FROM
				[Entity2Language] [a_Entity2Language]
		) [t1] ON [t1].[EntityId] = [x].[Id] AND [t1].[rn] <= 1
		LEFT JOIN [Language] [a_Language] ON [t1].[LanguageId] = [a_Language].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NOT NULL)
	DROP TABLE [Entity2Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

