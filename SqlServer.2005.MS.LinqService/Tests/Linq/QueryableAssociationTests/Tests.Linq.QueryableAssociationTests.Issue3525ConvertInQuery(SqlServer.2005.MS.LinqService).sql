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
		OUTER APPLY (
			SELECT TOP (1)
				[a_CustomerApplication].[Id]
			FROM
				[CustomerApplication] [a_CustomerApplication]
			WHERE
				[a_CustomerApplication].[Id] = CAST([i].[DocumentNo] AS Int)
		) [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NOT NULL)
	DROP TABLE [CustomerApplication]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NOT NULL)
	DROP TABLE [PropertyHistory]

