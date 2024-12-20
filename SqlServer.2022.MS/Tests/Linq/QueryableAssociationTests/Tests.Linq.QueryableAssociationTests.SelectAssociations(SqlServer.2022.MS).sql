BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Entity]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Entity]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Entity2Language]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NULL)
	CREATE TABLE [Entity2Language]
	(
		[Id]         Int NOT NULL,
		[EntityId]   Int NOT NULL,
		[LanguageId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Entity2Language]
(
	[Id],
	[EntityId],
	[LanguageId]
)
VALUES
(1,1,1)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[x].[Id],
	[t1].[LanguageId],
	[t1].[Name]
FROM
	[Entity] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Entity2Language].[LanguageId],
				[a_Language].[Name]
			FROM
				[Entity2Language] [a_Entity2Language]
					LEFT JOIN [Language] [a_Language] ON [a_Entity2Language].[LanguageId] = [a_Language].[Id]
			WHERE
				[a_Entity2Language].[EntityId] = [x].[Id]
		) [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Entity2Language]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Entity]

