﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MainEntity]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
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

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MainEntity]

