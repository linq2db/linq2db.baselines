-- SqlServer.2016.MS SqlServer.2016
SELECT
	IIF([r].[Flag] = 1, [r].[Stamp], [r].[Dto])
FROM
	[MixedStampRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[x].[Stamp]
FROM
	[MixedStampRow] [x]
WHERE
	[x].[Flag] = 0
UNION ALL
SELECT
	[r].[Dto]
FROM
	[MixedStampRow] [r]
WHERE
	[r].[Flag] = 1

-- SqlServer.2016.MS SqlServer.2016
SELECT
	DatePart(hour, IIF([r].[Flag] = 1, [r].[Stamp], [r].[Dto]))
FROM
	[MixedStampRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	DatePart(hour, [x_1].[V])
FROM
	(
		SELECT
			[x].[Stamp] as [V]
		FROM
			[MixedStampRow] [x]
		WHERE
			[x].[Flag] = 0
		UNION ALL
		SELECT
			[r].[Dto] as [V]
		FROM
			[MixedStampRow] [r]
		WHERE
			[r].[Flag] = 1
	) [x_1]

