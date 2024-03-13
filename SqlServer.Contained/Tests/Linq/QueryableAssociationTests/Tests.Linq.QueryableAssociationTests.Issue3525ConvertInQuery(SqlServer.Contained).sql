﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PropertyHistory]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[PropertyHistory]', N'U') IS NULL)
	CREATE TABLE [PropertyHistory]
	(
		[DocumentNo] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CustomerApplication]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[CustomerApplication]', N'U') IS NULL)
	CREATE TABLE [CustomerApplication]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_CustomerApplication] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
				[a_CustomerApplication].[Id] = Convert(Int, [i].[DocumentNo])
		) [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CustomerApplication]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PropertyHistory]

