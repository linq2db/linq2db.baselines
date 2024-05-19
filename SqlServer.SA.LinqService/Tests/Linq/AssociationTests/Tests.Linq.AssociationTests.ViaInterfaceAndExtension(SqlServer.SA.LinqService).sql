BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [MainEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [MainEntity]

