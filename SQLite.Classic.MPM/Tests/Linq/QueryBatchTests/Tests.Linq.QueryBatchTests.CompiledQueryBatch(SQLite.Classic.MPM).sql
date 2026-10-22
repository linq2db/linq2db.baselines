-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Page  -- Int32
SET     @Page = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
LIMIT @Page

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Item2  -- Int32
SET     @Item2 = 3

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
LIMIT @Item2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

