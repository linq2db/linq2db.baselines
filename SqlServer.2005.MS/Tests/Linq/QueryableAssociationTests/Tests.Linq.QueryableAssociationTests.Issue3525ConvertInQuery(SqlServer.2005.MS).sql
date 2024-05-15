BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NOT NULL)
	DROP TABLE [PropertyHistory]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NULL)
	CREATE TABLE [PropertyHistory]
	(
		[DocumentNo] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NOT NULL)
	DROP TABLE [CustomerApplication]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NULL)
	CREATE TABLE [CustomerApplication]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_CustomerApplication] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[i].[DocumentNo],
	[t1].[Id]
FROM
	[PropertyHistory] [i]
		LEFT JOIN (
			SELECT
				[a_CustomerApplication].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_CustomerApplication].[Id] ORDER BY [a_CustomerApplication].[Id]) as [rn]
			FROM
				[CustomerApplication] [a_CustomerApplication]
		) [t1] ON [t1].[Id] = CAST([i].[DocumentNo] AS Int) AND [t1].[rn] <= 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NOT NULL)
	DROP TABLE [CustomerApplication]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NOT NULL)
	DROP TABLE [PropertyHistory]

