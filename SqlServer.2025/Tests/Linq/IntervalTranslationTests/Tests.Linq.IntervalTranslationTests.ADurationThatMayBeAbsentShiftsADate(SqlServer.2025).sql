-- SqlServer.2025
SELECT
	[r].[Id],
	DateAdd(nanosecond, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Grace] AS BigInt) * 10000000) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)))),
	DateAdd(nanosecond, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Required] AS BigInt) * 10000000) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7))))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

