BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Parent]', N'U') IS NOT NULL)
	DROP TABLE [Issue3140Parent]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Parent]', N'U') IS NULL)
	CREATE TABLE [Issue3140Parent]
	(
		[Id]      Int NOT NULL,
		[ChildId] Int NOT NULL,

		CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Child]', N'U') IS NOT NULL)
	DROP TABLE [Issue3140Child]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Child]', N'U') IS NULL)
	CREATE TABLE [Issue3140Child]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3140Child] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[Id],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [p]
		LEFT JOIN [Issue3140Child] [a_Child] ON [p].[ChildId] = [a_Child].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Child]', N'U') IS NOT NULL)
	DROP TABLE [Issue3140Child]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3140Parent]', N'U') IS NOT NULL)
	DROP TABLE [Issue3140Parent]

