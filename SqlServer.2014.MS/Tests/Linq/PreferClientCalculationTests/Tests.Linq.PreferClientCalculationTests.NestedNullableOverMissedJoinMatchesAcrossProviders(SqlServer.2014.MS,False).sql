-- SqlServer.2014.MS SqlServer.2014
SELECT
	[e].[Id],
	[j].[Value1] + 1
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [ClientCalcEntity] [j] ON [j].[Id] = [e].[Id] + 1000

