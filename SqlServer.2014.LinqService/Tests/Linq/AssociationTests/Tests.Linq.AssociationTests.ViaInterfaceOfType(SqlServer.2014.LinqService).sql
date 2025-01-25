BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[SubEntity] [a_SubEntities]
		WHERE
			[x].[Id] = [a_SubEntities].[MainEntityId]
	)
FROM
	[MainEntity] [x]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

