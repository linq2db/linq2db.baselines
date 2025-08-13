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
	NULL
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
	[Value] = NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

