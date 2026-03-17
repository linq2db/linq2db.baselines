-- SQLite.Classic SQLite

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

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.Classic SQLite

UPDATE
	[TestBool]
SET
	[Value] = NOT [TestBool].[Value]

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.Classic SQLite

UPDATE
	[TestBool]
SET
	[Value] = 0
WHERE
	[TestBool].[Id] = 1

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

