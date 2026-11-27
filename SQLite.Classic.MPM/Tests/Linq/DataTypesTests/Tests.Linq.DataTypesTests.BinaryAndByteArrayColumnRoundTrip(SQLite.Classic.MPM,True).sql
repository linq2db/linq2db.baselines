-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [BinaryColumnRecord]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	X'010203',
	X'0405'
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[ID] = 1
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Array] = X'010203'
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Binary] = X'0405'
LIMIT 2

