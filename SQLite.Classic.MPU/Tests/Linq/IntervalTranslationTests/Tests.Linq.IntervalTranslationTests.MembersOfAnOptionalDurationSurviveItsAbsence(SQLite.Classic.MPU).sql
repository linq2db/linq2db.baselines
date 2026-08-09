-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	CAST(((CAST([r].[Grace] AS INTEGER) * 10000000) / 600000000) % 60 AS INTEGER),
	CAST(CAST([r].[Grace] AS INTEGER) * 10000000 AS Float) / 600000000,
	CAST(CAST([r].[Required] AS INTEGER) * 10000000 AS Float) / 600000000
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

