-- SQLite.Classic SQLite
DECLARE @bound VarChar(23) -- AnsiString
SET     @bound = '2000-01-01 00:00:00.000'

SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) > strftime('%Y-%m-%d %H:%M:%f', @bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) < strftime('%Y-%m-%d %H:%M:%f', @bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) > strftime('%Y-%m-%d %H:%M:%f', [e].[Date])
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) <= strftime('%Y-%m-%d %H:%M:%f', [e].[Date])
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

