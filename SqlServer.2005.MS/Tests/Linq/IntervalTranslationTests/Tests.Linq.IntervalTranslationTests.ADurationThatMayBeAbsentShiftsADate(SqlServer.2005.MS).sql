-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id],
	DateAdd(millisecond, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((CAST([r].[Grace] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Grace] AS BigInt) * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME)))),
	DateAdd(millisecond, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((CAST([r].[Required] AS BigInt) * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST([r].[Required] AS BigInt) * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME))))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

