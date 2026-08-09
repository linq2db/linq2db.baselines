-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Grace] AS BigInt) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Required] AS BigInt) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

