-- SqlServer.2017

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	N'value'
)

-- SqlServer.2017

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Id]      Int            NOT NULL,
		[Renamed] NVarChar(4000)     NULL
	)

-- SqlServer.2017

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

-- SqlServer.2017

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	N'value 2'
)

-- SqlServer.2017

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
VALUES
(
	2,
	N'renamed 2'
)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

