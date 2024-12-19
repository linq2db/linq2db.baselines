BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3140Parent]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue3140Parent]', N'U') IS NULL)
	CREATE TABLE [Issue3140Parent]
	(
		[Id]      Int NOT NULL,
		[ChildId] Int NOT NULL,

		CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3140Child]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue3140Child]', N'U') IS NULL)
	CREATE TABLE [Issue3140Child]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3140Child] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [t1]
		LEFT JOIN [Issue3140Child] [a_Child] ON [t1].[ChildId] = [a_Child].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3140Child]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3140Parent]

