﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[AdminPartyId] Int            NOT NULL,
		[Description]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Party]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Party]', N'U') IS NULL)
	CREATE TABLE [Party]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [PartyAccess]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[PartyAccess]', N'U') IS NULL)
	CREATE TABLE [PartyAccess]
	(
		[PartyId] Int            NOT NULL,
		[Role]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[task_1].[Description],
	[p].[Name]
FROM
	[Task] [task_1]
		LEFT JOIN [Party] [p] ON ([task_1].[AdminPartyId] = [p].[Id] OR EXISTS(
			SELECT
				*
			FROM
				[PartyAccess] [pa]
			WHERE
				[pa].[PartyId] = [p].[Id] AND [pa].[Role] = N'Admin'
		))

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [PartyAccess]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Party]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Task]

