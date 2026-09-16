-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce([j].[Value1], 0) - 1),
	CASE
		WHEN [j].[Date] IS NULL THEN 1
		ELSE CAST(strftime('%Y', [j].[Date]) AS INTEGER)
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN 'n'
		WHEN strftime('%Y-%m-%d %H:%M:%f', [j].[Date]) > strftime('%Y-%m-%d %H:%M:%f', '2000-01-01 00:00:00.000')
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN 'y'
		WHEN strftime('%Y-%m-%d %H:%M:%f', [j].[Date]) < strftime('%Y-%m-%d %H:%M:%f', '2000-01-01 00:00:00.000')
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN 'n'
		WHEN strftime('%Y-%m-%d %H:%M:%f', [j].[Date]) > strftime('%Y-%m-%d %H:%M:%f', [e].[Date])
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN 'y'
		WHEN strftime('%Y-%m-%d %H:%M:%f', [j].[Date]) <= strftime('%Y-%m-%d %H:%M:%f', [e].[Date])
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

