﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Adsl]', N'U') IS NOT NULL)
	DROP TABLE [Adsl]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Adsl]', N'U') IS NULL)
	CREATE TABLE [Adsl]
	(
		[Id]       Int NOT NULL,
		[IdClient] Int     NULL,

		CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Client]', N'U') IS NOT NULL)
	DROP TABLE [Client]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Client]', N'U') IS NULL)
	CREATE TABLE [Client]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON [adsl_1].[IdClient] = [client_1].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Client]', N'U') IS NOT NULL)
	DROP TABLE [Client]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Adsl]', N'U') IS NOT NULL)
	DROP TABLE [Adsl]

