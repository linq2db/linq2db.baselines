-- SQLite.MS SQLite
SELECT
	[r].[Dto]
FROM
	[ZonedRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	CAST(strftime('%H', [r].[Dto]) AS INTEGER)
FROM
	[ZonedRow] [r]
LIMIT 2

