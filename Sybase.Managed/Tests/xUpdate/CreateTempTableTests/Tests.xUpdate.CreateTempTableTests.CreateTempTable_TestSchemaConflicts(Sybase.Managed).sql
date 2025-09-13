BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TempTable]
		(
			[Id]      Int           NOT NULL,
			[Renamed] NVarChar(255)     NULL,

			CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

