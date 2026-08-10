-- SqlCe
SELECT
	[r].[Id],
	CAST(([r].[Grace] / CAST(60 AS BigInt)) % CAST(60 AS BigInt) AS Int),
	CAST([r].[Grace] AS Float) / 60,
	CAST([r].[Required] AS Float) / 60
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

