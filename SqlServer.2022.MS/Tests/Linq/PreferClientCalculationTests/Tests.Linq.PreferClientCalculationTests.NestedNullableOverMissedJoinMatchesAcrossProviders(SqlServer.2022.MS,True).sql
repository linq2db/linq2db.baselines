-- SqlServer.2022.MS SqlServer.2022
SELECT
	[e].[Id],
	[j].[Value1] + 1
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [ClientCalcEntity] [j] ON [j].[Id] = [e].[Id] + 1000

