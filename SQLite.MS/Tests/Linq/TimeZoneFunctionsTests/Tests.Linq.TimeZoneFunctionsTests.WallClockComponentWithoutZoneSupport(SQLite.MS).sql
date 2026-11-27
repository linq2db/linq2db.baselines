-- SQLite.MS SQLite
DECLARE @local Text(23) -- DateTime
SET     @local = '2020-06-15 12:00:00.000'

SELECT
	CAST(strftime('%H', @local) AS INTEGER),
	Date(@local),
	strftime('%H:%M:%f', @local),
	CAST(strftime('%H', [r].[Dt]) AS INTEGER),
	Date([r].[Dt]),
	strftime('%H:%M:%f', [r].[Dt])
FROM
	[DateRow] [r]
LIMIT 2

