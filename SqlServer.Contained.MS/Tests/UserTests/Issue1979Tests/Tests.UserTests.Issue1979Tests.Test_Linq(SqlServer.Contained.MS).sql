﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]   BigInt         NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Tagging]', N'U') IS NULL)
	CREATE TABLE [Tagging]
	(
		[Id]           BigInt         NOT NULL,
		[TagId]        Int            NOT NULL,
		[TaggableId]   Int            NOT NULL,
		[TaggableType] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Tagging] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue]', N'U') IS NULL)
	CREATE TABLE [Issue]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [t_1]
				INNER JOIN [Tag] [t] ON [t_1].[TagId] = [t].[Id]
		WHERE
			[t_1].[TaggableId] = [i].[Id] AND ([t].[Name] = N'Visu') AND
			([t_1].[TaggableType] = N'Issue')
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tag]

