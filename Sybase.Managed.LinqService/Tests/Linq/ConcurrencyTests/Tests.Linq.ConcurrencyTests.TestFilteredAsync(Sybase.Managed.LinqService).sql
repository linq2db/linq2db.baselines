BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcurrencyFiltered]
		(
			[Id]    Int           NOT NULL,
			[Stamp] Int           NOT NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcurrencyFiltered] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

