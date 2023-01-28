BeforeExecute
-- SqlCe

DROP TABLE [TestTempTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TestTempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
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

BeforeExecute
-- SqlCe

CREATE TABLE [TempTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

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

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe

DROP TABLE [TestTempTable]

