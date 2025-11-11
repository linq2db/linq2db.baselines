-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TestBool]
SET
	[Value] = NOT [TestBool].[Value]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

