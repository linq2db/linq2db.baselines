-- SqlServer.2017.MS SqlServer.2017
SELECT
	Coalesce([r].[StampN], [r].[Dto]),
	IIF([r].[Flag] = 1, [r].[Dto], [r].[Stamp])
FROM
	[MixedStampRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	Coalesce([r].[StampN], [r].[Dto]),
	IIF([r].[Flag] = 1, [r].[Dto], [r].[Stamp]),
	Coalesce([r].[StampN], [r].[Dto])
FROM
	[MixedStampRow] [r]
ORDER BY
	[r].[Id]

