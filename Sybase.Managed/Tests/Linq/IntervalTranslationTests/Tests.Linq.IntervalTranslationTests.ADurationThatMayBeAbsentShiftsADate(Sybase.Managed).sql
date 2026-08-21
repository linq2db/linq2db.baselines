-- Sybase.Managed Sybase
SELECT
	[r].[Id],
	DateAdd(millisecond, (([r].[Grace] * 10000000) % 10000000) / 10000, DateAdd(second, (([r].[Grace] * 10000000) % 864000000000) / 10000000, DateAdd(day, ([r].[Grace] * 10000000) / 864000000000, '2026-03-01 00:00:00.000'))),
	DateAdd(millisecond, (([r].[Required] * 10000000) % 10000000) / 10000, DateAdd(second, (([r].[Required] * 10000000) % 864000000000) / 10000000, DateAdd(day, ([r].[Required] * 10000000) / 864000000000, '2026-03-01 00:00:00.000')))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

