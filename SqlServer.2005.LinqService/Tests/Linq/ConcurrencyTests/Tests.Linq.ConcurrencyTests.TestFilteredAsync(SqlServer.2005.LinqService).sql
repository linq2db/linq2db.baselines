BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyFiltered]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyFiltered]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyFiltered]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyFiltered] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ConcurrencyFiltered]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

