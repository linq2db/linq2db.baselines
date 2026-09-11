-- SQLite.Classic SQLite
DECLARE @testDate VarChar(23) -- AnsiString
SET     @testDate = '2020-02-29 00:00:00.000'

SELECT
	[t].[DateTimeNullable]
FROM
	[ValueConversion] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @testDate) = strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeNullable])

-- SQLite.Classic SQLite
DECLARE @testDate VarChar(23) -- AnsiString
SET     @testDate = '2020-02-29 00:00:00.000'

SELECT
	[t].[DateTimeNullable]
FROM
	[ValueConversion] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeNullable]) = strftime('%Y-%m-%d %H:%M:%f', @testDate)

