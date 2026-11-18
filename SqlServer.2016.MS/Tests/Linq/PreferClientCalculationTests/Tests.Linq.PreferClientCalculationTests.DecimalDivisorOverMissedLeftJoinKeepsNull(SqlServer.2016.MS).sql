-- SqlServer.2016.MS SqlServer.2016
SELECT
	[e].[Dec] / [j].[Dec]
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

