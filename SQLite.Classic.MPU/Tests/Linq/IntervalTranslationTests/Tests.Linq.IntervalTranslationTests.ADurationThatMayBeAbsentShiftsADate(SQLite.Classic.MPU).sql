-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	strftime('%Y-%m-%d %H:%M:%f', '2026-03-01 00:00:00.000', CAST(CAST(([r].[Grace] * 10000000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', '2026-03-01 00:00:00.000', CAST(CAST(([r].[Required] * 10000000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

