BeforeExecute
-- SqlCe

DROP TABLE [Task]

BeforeExecute
-- SqlCe

CREATE TABLE [Task]
(
	[AdminPartyId] Int           NOT NULL,
	[Description]  NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Party]

BeforeExecute
-- SqlCe

CREATE TABLE [Party]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [PartyAccess]

BeforeExecute
-- SqlCe

CREATE TABLE [PartyAccess]
(
	[PartyId] Int           NOT NULL,
	[Role]    NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [PartyAccess]

BeforeExecute
-- SqlCe

DROP TABLE [Party]

BeforeExecute
-- SqlCe

DROP TABLE [Task]

