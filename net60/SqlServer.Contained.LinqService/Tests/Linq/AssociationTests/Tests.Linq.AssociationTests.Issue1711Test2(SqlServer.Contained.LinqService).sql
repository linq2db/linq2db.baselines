BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Entity1711]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Entity1711]', N'U') IS NULL)
	CREATE TABLE [Entity1711]
	(
		[Id] BigInt NOT NULL,

		CONSTRAINT [PK_Entity1711] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Relationship1711]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Relationship1711]', N'U') IS NULL)
	CREATE TABLE [Relationship1711]
	(
		[EntityId] BigInt NOT NULL,
		[Deleted]  Bit    NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Relationship1711] [r]
		WHERE
			[r].[Deleted] = 0 AND [r].[EntityId] = [t].[Id]
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Relationship1711]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Entity1711]

