-- SqlServer.2008
SELECT
	[e].[Id],
	CASE
		WHEN 0 IN (
			SELECT
				[t1].[item]
			FROM
				(VALUES
					([j].[Value1]), (5)
				) [t1]([item])
		)
			THEN 1
		ELSE 0
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

