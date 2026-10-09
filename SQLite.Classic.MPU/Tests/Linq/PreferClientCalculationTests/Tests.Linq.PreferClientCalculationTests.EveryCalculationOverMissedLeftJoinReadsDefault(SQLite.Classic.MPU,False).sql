-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	Coalesce([j].[Value1], 0) | 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	CASE
		WHEN Coalesce([j].[Value1], 0) IN (0) THEN 'y'
		ELSE 'n'
	END,
	-Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN NOT Coalesce([j].[Flag], 0) THEN 't'
		ELSE 'f'
	END,
	CASE
		WHEN NOT (Coalesce([j].[Flag], 0) OR [e].[Id] < 0) THEN 't'
		ELSE 'f'
	END,
	Abs(Coalesce([j].[Value1], 0)) + 1,
	CAST(strftime('%Y', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) AS INTEGER),
	'x' || CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	ABS(Coalesce([j].[Value1], 0)) + 1,
	CAST(Coalesce([j].[Value1], 0) AS Float) + 1,
	CASE
		WHEN [e].[Id] > 0 THEN Coalesce([j].[Value1], 0)
		ELSE 5
	END + 1,
	Coalesce([j].[Value1], 0) + 1,
	Coalesce([j].[Value1], 0) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

