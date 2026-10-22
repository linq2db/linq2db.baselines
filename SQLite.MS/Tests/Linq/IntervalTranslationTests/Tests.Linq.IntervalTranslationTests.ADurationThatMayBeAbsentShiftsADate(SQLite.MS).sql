-- SQLite.MS SQLite
SELECT
	[r].[Id],
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST([r].[Grace] * 10000000 AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST([r].[Required] * 10000000 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

