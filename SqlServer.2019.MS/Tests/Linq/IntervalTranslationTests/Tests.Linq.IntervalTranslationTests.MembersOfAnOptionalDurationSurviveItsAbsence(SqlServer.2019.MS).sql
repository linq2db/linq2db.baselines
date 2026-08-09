-- SqlServer.2019.MS SqlServer.2019
SELECT
	[r].[Id],
	CAST(((CAST([r].[Grace] AS BigInt) * 10000000) / 600000000) % 60 AS Int),
	CAST(CAST([r].[Grace] AS BigInt) * 10000000 AS Float) / 600000000,
	CAST(CAST([r].[Required] AS BigInt) * 10000000 AS Float) / 600000000
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

