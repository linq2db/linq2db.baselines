BeforeExecute
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)

CREATE TABLE [TempTable]
(
	[Id]      Int           NOT NULL,
	[Renamed] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe (asynchronously)

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

BeforeExecute
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)

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
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Renamed] as [Value_1]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TempTable]

