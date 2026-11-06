-- SqlServer.Contained SqlServer.2025
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SqlServer.Contained SqlServer.2025
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

-- SqlServer.Contained SqlServer.2025
SELECT
	IIF([r].[Id] <> 1, [r].[Date], [r].[Plain])
FROM
	[TicksConversionRow] [r]
ORDER BY
	[r].[Id]

