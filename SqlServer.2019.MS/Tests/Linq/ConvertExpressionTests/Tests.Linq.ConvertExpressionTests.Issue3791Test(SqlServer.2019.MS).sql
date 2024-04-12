BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3791Table]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue3791Table]', N'U') IS NULL)
	CREATE TABLE [Issue3791Table]
	(
		[Id]      Int             NOT NULL IDENTITY,
		[OtherId] NVarChar(4000)      NULL,

		CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue3791GuidTable]', N'U') IS NULL)
	CREATE TABLE [Issue3791GuidTable]
	(
		[Id] UniqueIdentifier NOT NULL,

		CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t2].[Id],
	[t2].[OtherId],
	[t1].[Id]
FROM
	[Issue3791Table] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Id],
				CAST([a_Association].[Id] AS NVarChar(36)) as [c1]
			FROM
				[Issue3791GuidTable] [a_Association]
		) [t1] ON ([t2].[OtherId] = [t1].[c1] OR [t2].[OtherId] IS NULL AND [t1].[c1] IS NULL)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3791Table]

