﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [Task]
(
	[AdminPartyId] Int            NOT NULL,
	[Description]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [Party]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [PartyAccess]
(
	[PartyId] Int            NOT NULL,
	[Role]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[task_1].[Description],
	[t1].[Name]
FROM
	[Task] [task_1]
		OUTER APPLY (
			SELECT
				[p].[Name]
			FROM
				[Party] [p]
			WHERE
				([task_1].[AdminPartyId] = [p].[Id] OR EXISTS(
					SELECT
						*
					FROM
						[PartyAccess] [pa]
					WHERE
						[pa].[PartyId] = [p].[Id] AND [pa].[Role] = N'Admin'
				))
		) [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[PartyAccess]', N'U') IS NOT NULL)
	DROP TABLE [PartyAccess]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Party]', N'U') IS NOT NULL)
	DROP TABLE [Party]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Task]', N'U') IS NOT NULL)
	DROP TABLE [Task]

