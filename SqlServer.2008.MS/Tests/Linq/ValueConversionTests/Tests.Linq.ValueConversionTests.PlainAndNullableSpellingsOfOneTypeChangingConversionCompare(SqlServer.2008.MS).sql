-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	CASE
		WHEN [r].[Id] <> 1 THEN [r].[Date]
		ELSE [r].[Plain]
	END
FROM
	[TicksConversionRow] [r]
ORDER BY
	[r].[Id]

