BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PropertyHistory]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NULL)
	CREATE TABLE [PropertyHistory]
	(
		[DocumentNo] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomerApplication]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NULL)
	CREATE TABLE [CustomerApplication]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_CustomerApplication] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[i].[DocumentNo],
	[t1].[Id]
FROM
	[PropertyHistory] [i]
		OUTER APPLY (
			SELECT TOP (1)
				[a_CustomerApplication].[Id]
			FROM
				[CustomerApplication] [a_CustomerApplication]
			WHERE
				[a_CustomerApplication].[Id] = CAST([i].[DocumentNo] AS Int) AND
				CAST([i].[DocumentNo] AS Int) IS NOT NULL
		) [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomerApplication]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PropertyHistory]

