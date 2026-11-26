-- SQLite.MS SQLite
SELECT
	[r].[Dto]
FROM
	[ZonedRow] [r]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @p Text -- DateTimeOffset
SET     @p = '2020-06-15 11:20:00.000+00:00'

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Dto]) = strftime('%Y-%m-%d %H:%M:%f', @p)

