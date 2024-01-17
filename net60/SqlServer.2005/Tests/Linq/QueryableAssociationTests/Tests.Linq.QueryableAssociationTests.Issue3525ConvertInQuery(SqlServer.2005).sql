BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NOT NULL)
	DROP TABLE [PropertyHistory]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NULL)
	CREATE TABLE [PropertyHistory]
	(
		[DocumentNo] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NOT NULL)
	DROP TABLE [CustomerApplication]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NULL)
	CREATE TABLE [CustomerApplication]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_CustomerApplication] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[DocumentNo],
	[a_CustomerApplication].[Id]
FROM
	[PropertyHistory] [i]
		OUTER APPLY (
			SELECT TOP (@take)
				[a].[Id]
			FROM
				[CustomerApplication] [a]
			WHERE
				[a].[Id] = Convert(Int, [i].[DocumentNo])
		) [a_CustomerApplication]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NOT NULL)
	DROP TABLE [CustomerApplication]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NOT NULL)
	DROP TABLE [PropertyHistory]

