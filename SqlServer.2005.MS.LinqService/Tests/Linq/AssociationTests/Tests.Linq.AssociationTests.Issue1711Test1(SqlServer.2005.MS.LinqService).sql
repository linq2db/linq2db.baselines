BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Entity1711]', N'U') IS NOT NULL)
	DROP TABLE [Entity1711]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Entity1711]', N'U') IS NULL)
	CREATE TABLE [Entity1711]
	(
		[Id] BigInt NOT NULL,

		CONSTRAINT [PK_Entity1711] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Relationship1711]', N'U') IS NOT NULL)
	DROP TABLE [Relationship1711]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Relationship1711]', N'U') IS NULL)
	CREATE TABLE [Relationship1711]
	(
		[EntityId] BigInt NOT NULL,
		[Deleted]  Bit    NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Relationship1711] [a_relationship]
		WHERE
			[t].[Id] = [a_relationship].[EntityId]
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Relationship1711]', N'U') IS NOT NULL)
	DROP TABLE [Relationship1711]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Entity1711]', N'U') IS NOT NULL)
	DROP TABLE [Entity1711]

