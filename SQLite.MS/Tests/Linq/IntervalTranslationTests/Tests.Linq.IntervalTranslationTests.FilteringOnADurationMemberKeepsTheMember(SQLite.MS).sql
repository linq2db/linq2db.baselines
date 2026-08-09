-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Grace] AS INTEGER) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	CAST(CAST([r].[Required] AS INTEGER) * 10000000 AS Float) / 600000000 > 30
ORDER BY
	[r].[Id]

