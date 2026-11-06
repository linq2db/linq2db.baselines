-- SqlServer.2014
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SqlServer.2014
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

-- SqlServer.2014
SELECT
	IIF([r].[Id] <> 1, [r].[Date], [r].[Plain])
FROM
	[TicksConversionRow] [r]
ORDER BY
	[r].[Id]

