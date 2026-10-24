-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[e].[Value1] / [j].[Value1],
	[e].[Value1] % [j].[Value1],
	[e].[Dbl] / [j].[Dbl],
	[e].[Value1] / ([j].[Value1] * 2)
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

