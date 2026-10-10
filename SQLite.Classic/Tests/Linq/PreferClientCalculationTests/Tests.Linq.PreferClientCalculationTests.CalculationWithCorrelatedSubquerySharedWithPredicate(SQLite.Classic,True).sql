-- SQLite.Classic SQLite
SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([e].[Value1] + CASE
					WHEN EXISTS(
						SELECT
							*
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					)
						THEN 1
					ELSE 0
				END AS Float) / 4 - FLOOR(CAST([e].[Value1] + CASE
					WHEN EXISTS(
						SELECT
							*
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					)
						THEN 1
					ELSE 0
				END AS Float) / 4) = 0.5 AND FLOOR(CAST([e].[Value1] + CASE
					WHEN EXISTS(
						SELECT
							*
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					)
						THEN 1
					ELSE 0
				END AS Float) / 4) % 2 = 0
					THEN FLOOR(CAST([e].[Value1] + CASE
					WHEN EXISTS(
						SELECT
							*
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					)
						THEN 1
					ELSE 0
				END AS Float) / 4)
				ELSE ROUND(CAST([e].[Value1] + CASE
					WHEN EXISTS(
						SELECT
							*
						FROM
							[MissedJoinEntity] [c_1]
						WHERE
							[c_1].[Id] = [j].[Id]
					)
						THEN 1
					ELSE 0
				END AS Float) / 4, 0)
			END as [c1]
		FROM
			[MissedJoinEntity] [e]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Value1] = [e].[Value1] + 1000
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

