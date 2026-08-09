-- SqlCe
SELECT
	[r].[Id],
	CAST(((CAST([r].[Grace] AS BigInt) * 10000000) / CAST(600000000 AS BigInt)) % CAST(60 AS BigInt) AS Int),
	CAST(CAST([r].[Grace] AS BigInt) * 10000000 AS Float) / 600000000,
	CAST(CAST([r].[Required] AS BigInt) * 10000000 AS Float) / 600000000
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

