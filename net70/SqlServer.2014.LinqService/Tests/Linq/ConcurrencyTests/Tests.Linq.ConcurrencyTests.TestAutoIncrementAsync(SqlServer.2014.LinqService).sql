BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyTable]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyTable]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyTable]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyTable]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyTable]

