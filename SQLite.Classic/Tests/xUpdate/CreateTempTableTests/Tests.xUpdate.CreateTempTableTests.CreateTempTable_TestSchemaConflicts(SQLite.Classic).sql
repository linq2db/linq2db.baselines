﻿BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[Id]      INTEGER       NOT NULL,
	[Renamed] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

