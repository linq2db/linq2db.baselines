BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTempTable') IS NOT NULL)
	DROP TABLE [TestTempTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TestTempTable]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

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
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[Id],
	[Value]
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
	[Value]
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
	[t1].[Value]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTempTable') IS NOT NULL)
	DROP TABLE [TestTempTable]

