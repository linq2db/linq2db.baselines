BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Adsl]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Adsl]', N'U') IS NULL)
	CREATE TABLE [Adsl]
	(
		[Id]       Int NOT NULL,
		[IdClient] Int     NULL,

		CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Client]', N'U') IS NULL)
	CREATE TABLE [Client]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[serv].[Id]
FROM
	[Adsl] [serv]
		INNER JOIN [Client] [client_1] ON [serv].[IdClient] = [client_1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Adsl]

