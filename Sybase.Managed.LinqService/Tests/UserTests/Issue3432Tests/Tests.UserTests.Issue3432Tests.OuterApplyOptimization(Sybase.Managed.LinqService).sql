BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NOT NULL)
	DROP TABLE [Task]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NULL)
	EXECUTE('
		CREATE TABLE [Task]
		(
			[AdminPartyId] Int           NOT NULL,
			[Description]  NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Party') IS NOT NULL)
	DROP TABLE [Party]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Party') IS NULL)
	EXECUTE('
		CREATE TABLE [Party]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PartyAccess') IS NOT NULL)
	DROP TABLE [PartyAccess]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PartyAccess') IS NULL)
	EXECUTE('
		CREATE TABLE [PartyAccess]
		(
			[PartyId] Int           NOT NULL,
			[Role]    NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
				[pa].[PartyId] = [party_1].[Id] AND [pa].[Role] = 'Admin' AND
				[pa].[Role] IS NOT NULL
		)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PartyAccess') IS NOT NULL)
	DROP TABLE [PartyAccess]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Party') IS NOT NULL)
	DROP TABLE [Party]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NOT NULL)
	DROP TABLE [Task]

