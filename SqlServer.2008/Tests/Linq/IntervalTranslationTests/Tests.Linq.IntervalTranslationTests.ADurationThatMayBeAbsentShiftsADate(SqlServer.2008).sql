-- SqlServer.2008
SELECT
	[r].[Id],
	DateAdd(nanosecond, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Grace] AS BigInt) * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.0000000' AS DATETIME2)))),
	DateAdd(nanosecond, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Required] AS BigInt) * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.0000000' AS DATETIME2))))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

