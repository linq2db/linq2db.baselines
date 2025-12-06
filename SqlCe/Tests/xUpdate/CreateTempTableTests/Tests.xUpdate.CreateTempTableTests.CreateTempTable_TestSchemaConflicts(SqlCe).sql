-- SqlCe

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

-- SqlCe

CREATE TABLE [TempTable]
(
	[Id]      Int           NOT NULL,
	[Renamed] NVarChar(255)     NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Id])
)

-- SqlCe

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestTempTable] [t1]

-- SqlCe

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

-- SqlCe

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

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Renamed] as [Value_1]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

DROP TABLE [TempTable]

