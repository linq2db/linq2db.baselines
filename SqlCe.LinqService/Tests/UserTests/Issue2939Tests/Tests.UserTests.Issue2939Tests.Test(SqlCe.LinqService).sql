BeforeExecute
-- SqlCe

DROP TABLE [Adsl]

BeforeExecute
-- SqlCe

CREATE TABLE [Adsl]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Client]

BeforeExecute
-- SqlCe

CREATE TABLE [Client]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON [adsl_1].[IdClient] = [client_1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Client]

BeforeExecute
-- SqlCe

DROP TABLE [Adsl]

