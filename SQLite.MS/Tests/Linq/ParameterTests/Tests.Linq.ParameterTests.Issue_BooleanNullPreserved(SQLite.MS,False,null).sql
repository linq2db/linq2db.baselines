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

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.MS SQLite

UPDATE
	[TestBool]
SET
	[Value] = NOT [TestBool].[Value]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.MS SQLite

UPDATE
	[TestBool]
SET
	[Value] = NULL
WHERE
	[TestBool].[Id] = 1

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

