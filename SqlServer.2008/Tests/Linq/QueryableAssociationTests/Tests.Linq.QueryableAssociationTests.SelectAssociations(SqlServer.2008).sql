BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Entity]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NOT NULL)
	DROP TABLE [Entity2Language]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NULL)
	CREATE TABLE [Entity2Language]
	(
		[Id]         Int NOT NULL,
		[EntityId]   Int NOT NULL,
		[LanguageId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Entity2Language]
(
	[Id],
	[EntityId],
	[LanguageId]
)
VALUES
(1,1,1)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English')

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT TOP (@take)
	[x_1].[Id],
	[a_Entity2Language].[LanguageId],
	[a_Entity2Language].[Name]
FROM
	[Entity] [x_1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x].[LanguageId],
				[a_Language].[Name]
			FROM
				[Entity2Language] [x]
					LEFT JOIN [Language] [a_Language] ON [x].[LanguageId] = [a_Language].[Id]
			WHERE
				[x].[EntityId] = [x_1].[Id]
		) [a_Entity2Language]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity2Language]', N'U') IS NOT NULL)
	DROP TABLE [Entity2Language]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

