-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id] - 3
FROM
	[DataClass] [t]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 2

SELECT
	([t].[Id] - @n) - @n + 1
FROM
	[DataClass] [t]

