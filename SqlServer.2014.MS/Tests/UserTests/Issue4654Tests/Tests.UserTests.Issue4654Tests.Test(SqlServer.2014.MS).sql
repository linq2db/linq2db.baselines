BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Customer]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Customer]', N'U') IS NULL)
	CREATE TABLE [Issue4654Customer]
	(
		[Id]   Int             NOT NULL IDENTITY,
		[Name] NVarChar(4000)      NULL,

		CONSTRAINT [PK_Issue4654Customer] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Order]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Order]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Order]', N'U') IS NULL)
	CREATE TABLE [Issue4654Order]
	(
		[Id]          Int             NOT NULL IDENTITY,
		[ProductName] NVarChar(4000)      NULL,
		[Quantity]    Int             NOT NULL,
		[CustomerId]  Int             NOT NULL,

		CONSTRAINT [PK_Issue4654Order] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Product]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Product]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Product]', N'U') IS NULL)
	CREATE TABLE [Issue4654Product]
	(
		[Id]    Int             NOT NULL IDENTITY,
		[Name]  NVarChar(4000)      NULL,
		[Price] Decimal         NOT NULL,

		CONSTRAINT [PK_Issue4654Product] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST([c_1].[Id] AS NVarChar(11)),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(11)),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(11)),
	[p].[Name]
FROM
	[Issue4654Product] [p]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Product]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Product]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Order]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Order]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4654Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue4654Customer]

