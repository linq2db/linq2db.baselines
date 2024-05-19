BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	(
		SELECT
			Count(*)
		FROM
			[SubEntity] [t1]
		WHERE
			[x].[Id] = [t1].[MainEntityId]
	)
FROM
	[MainEntity] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubEntity] [t2]
		WHERE
			[x].[Id] = [t2].[MainEntityId]
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

