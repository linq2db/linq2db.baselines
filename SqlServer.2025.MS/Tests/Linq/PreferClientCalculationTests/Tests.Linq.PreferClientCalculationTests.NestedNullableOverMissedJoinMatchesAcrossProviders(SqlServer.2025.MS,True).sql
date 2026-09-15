-- SqlServer.2025.MS SqlServer.2025
SELECT
	[e].[Id],
	Abs([j].[Value1])
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [ClientCalcEntity] [j] ON [j].[Id] = [e].[Id] + 1000

