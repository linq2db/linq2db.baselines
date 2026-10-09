-- SQLite.Classic SQLite
SELECT
	[y].[X_1] + 1
FROM
	(
		SELECT
			CASE
				WHEN [j].[Value1] < 5 THEN 1
				ELSE 2
			END as [X],
			[e].[Id],
			CASE
				WHEN Coalesce([j].[Value1], 0) < 5 THEN 1
				ELSE 2
			END as [X_1]
		FROM
			[MissedJoinEntity] [e]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
	) [y]
WHERE
	[y].[X] > 0
ORDER BY
	[y].[Id]

