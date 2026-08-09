-- Sybase.Managed Sybase
SELECT
	[r].[Id],
	DateAdd(millisecond, ((CAST([r].[Grace] AS BigInt) * 10000000) % 10000000) / 10000, DateAdd(second, ((CAST([r].[Grace] AS BigInt) * 10000000) % 864000000000) / 10000000, DateAdd(day, (CAST([r].[Grace] AS BigInt) * 10000000) / 864000000000, '2026-03-01 00:00:00.000'))),
	DateAdd(millisecond, ((CAST([r].[Required] AS BigInt) * 10000000) % 10000000) / 10000, DateAdd(second, ((CAST([r].[Required] AS BigInt) * 10000000) % 864000000000) / 10000000, DateAdd(day, (CAST([r].[Required] AS BigInt) * 10000000) / 864000000000, '2026-03-01 00:00:00.000')))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

