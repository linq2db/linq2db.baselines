-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CASE
		WHEN 0 IN (
			SELECT
				[t1].[item]
			FROM
				(
					SELECT NULL [item] WHERE 1 = 0
					UNION ALL
					VALUES
						([j].[Value1]), (5)
					) [t1]
		)
			THEN 1
		ELSE 0
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

