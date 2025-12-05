-- SQLite.MS SQLite
DECLARE @testDate  -- DateTime
SET     @testDate = '2020-02-29 00:00:00.000'

SELECT
	[t].[DateTimeNullable]
FROM
	[ValueConversion] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @testDate) = strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeNullable])

-- SQLite.MS SQLite
DECLARE @testDate  -- DateTime
SET     @testDate = '2020-02-29 00:00:00.000'

SELECT
	[t].[DateTimeNullable]
FROM
	[ValueConversion] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeNullable]) = strftime('%Y-%m-%d %H:%M:%f', @testDate)

