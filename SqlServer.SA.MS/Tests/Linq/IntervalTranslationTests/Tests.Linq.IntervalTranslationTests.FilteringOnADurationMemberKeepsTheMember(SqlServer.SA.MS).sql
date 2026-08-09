-- SqlServer.SA.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Grace] AS BigInt) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Required] AS BigInt) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

