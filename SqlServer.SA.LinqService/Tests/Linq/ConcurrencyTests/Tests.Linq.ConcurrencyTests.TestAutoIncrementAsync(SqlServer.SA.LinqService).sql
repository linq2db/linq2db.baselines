BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ConcurrencyAutoIncrement]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ConcurrencyAutoIncrement]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyAutoIncrement]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyAutoIncrement] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ConcurrencyAutoIncrement]

