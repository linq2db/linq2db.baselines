-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > CAST(CAST(1800 AS Decimal) AS INTEGER)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Required] > CAST(CAST(1800 AS Decimal) AS INTEGER)
ORDER BY
	[r].[Id]

