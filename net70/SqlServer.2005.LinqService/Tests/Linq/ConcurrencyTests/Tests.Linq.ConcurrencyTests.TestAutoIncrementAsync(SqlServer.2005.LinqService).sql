BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyAutoIncrement]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyAutoIncrement]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyAutoIncrement]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyAutoIncrement]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyAutoIncrement] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyAutoIncrement]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyAutoIncrement]

