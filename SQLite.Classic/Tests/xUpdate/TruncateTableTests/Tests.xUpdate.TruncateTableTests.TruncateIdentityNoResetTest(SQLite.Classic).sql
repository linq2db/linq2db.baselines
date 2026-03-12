-- SQLite.Classic SQLite

DELETE FROM [test_temp]

-- SQLite.Classic SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.Classic SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

-- SQLite.Classic SQLite

DELETE FROM [test_temp]

-- SQLite.Classic SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.Classic SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

