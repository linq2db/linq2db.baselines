BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestBool]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestBool]
(
	[Id]    INTEGER NOT NULL,
	[Value] Bit         NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = NOT [TestBool].[Value]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestBool]

