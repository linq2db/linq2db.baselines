﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3791Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791Table]', N'U') IS NULL)
	CREATE TABLE [Issue3791Table]
	(
		[Id]      Int             NOT NULL IDENTITY,
		[OtherId] NVarChar(4000)      NULL,

		CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791GuidTable]', N'U') IS NOT NULL)
	DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791GuidTable]', N'U') IS NULL)
	CREATE TABLE [Issue3791GuidTable]
	(
		[Id] UniqueIdentifier NOT NULL,

		CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON ([t1].[OtherId] = CAST([a_Association].[Id] AS NVarChar(36)) OR [t1].[OtherId] IS NULL AND CAST([a_Association].[Id] AS NVarChar(36)) IS NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791GuidTable]', N'U') IS NOT NULL)
	DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3791Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3791Table]

