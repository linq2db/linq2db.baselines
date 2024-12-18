BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Task]', N'U') IS NOT NULL)
	DROP TABLE [Task]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[AdminPartyId] Int            NOT NULL,
		[Description]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Party]', N'U') IS NOT NULL)
	DROP TABLE [Party]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Party]', N'U') IS NULL)
	CREATE TABLE [Party]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PartyAccess]', N'U') IS NOT NULL)
	DROP TABLE [PartyAccess]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PartyAccess]', N'U') IS NULL)
	CREATE TABLE [PartyAccess]
	(
		[PartyId] Int            NOT NULL,
		[Role]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[task_1].[Description],
	[party_1].[Name]
FROM
	[Task] [task_1]
		LEFT JOIN [Party] [party_1] ON [task_1].[AdminPartyId] = [party_1].[Id] OR EXISTS(
			SELECT
				*
			FROM
				[PartyAccess] [pa]
			WHERE
				[pa].[PartyId] = [party_1].[Id] AND [pa].[Role] = N'Admin' AND
				[pa].[Role] IS NOT NULL
		)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PartyAccess]', N'U') IS NOT NULL)
	DROP TABLE [PartyAccess]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Party]', N'U') IS NOT NULL)
	DROP TABLE [Party]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Task]', N'U') IS NOT NULL)
	DROP TABLE [Task]

