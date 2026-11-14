-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	IIF(0 IN (
		SELECT
			[t1].[item]
		FROM
			(
				SELECT [j].[Value1] AS [item]
				UNION ALL
				SELECT 5) [t1]
	), True, False)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

