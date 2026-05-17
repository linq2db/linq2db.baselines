-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [test_insert_or_replace] AS [t1]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)
ON CONFLICT ([id]) DO NOTHING

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [test_insert_or_replace] AS [t1]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)
ON CONFLICT ([id]) DO NOTHING

