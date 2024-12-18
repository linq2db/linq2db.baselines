BeforeExecute
-- SqlCe

DROP TABLE [Issue4454Client]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4454Client]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4454Service]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4454Service]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[a_Client1].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client1] ON [s].[IdClient] = [a_Client1].[Id] AND [s].[IdClient] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [Issue4454Service]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4454Client]

