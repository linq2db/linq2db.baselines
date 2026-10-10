-- SQLite.Classic SQLite
SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([t1].[Value1] + [t1].[Count_1] AS Float) / 4 - FLOOR(CAST([t1].[Value1] + [t1].[Count_1] AS Float) / 4) = 0.5 AND FLOOR(CAST([t1].[Value1] + [t1].[Count_1] AS Float) / 4) % 2 = 0
					THEN FLOOR(CAST([t1].[Value1] + [t1].[Count_1] AS Float) / 4)
				ELSE ROUND(CAST([t1].[Value1] + [t1].[Count_1] AS Float) / 4, 0)
			END as [c1]
		FROM
			(
				SELECT
					[e].[Value1],
					(
						SELECT
							COUNT(*)
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					) as [Count_1]
				FROM
					[MissedJoinEntity] [e]
						LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
			) [t1]
	) [t]
WHERE
	[t].[c1] <> 0

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

