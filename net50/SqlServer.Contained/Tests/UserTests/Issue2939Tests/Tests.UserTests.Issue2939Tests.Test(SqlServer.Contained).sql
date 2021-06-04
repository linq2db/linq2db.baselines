BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Adsl]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Client]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON [adsl_1].[IdClient] = [client_1].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Adsl]

