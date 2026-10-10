-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[y].[Value1]
FROM
	(
		SELECT
			CASE
				WHEN [j].[Value1] < 5 THEN 1
				ELSE 2
			END as [X],
			[e].[Id],
			[j].[Value1]
		FROM
			[MissedJoinEntity] [e]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
	) [y]
WHERE
	[y].[X] > 0
ORDER BY
	[y].[Id]

