-- SqlServer.CS.MS SqlServer.2025
SELECT
	[e].[Id],
	IIF(0 IN (
		SELECT
			[t1].[item]
		FROM
			(VALUES
				([j].[Value1]), (5)
			) [t1]([item])
	), 1, 0)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

