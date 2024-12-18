BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dateTime VarChar(23) -- AnsiString
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime) AND
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) IS NOT NULL AND
	strftime('%Y-%m-%d %H:%M:%f', @dateTime) IS NOT NULL
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dateTime VarChar(23) -- AnsiString
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime) AND
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) IS NOT NULL AND
	strftime('%Y-%m-%d %H:%M:%f', @dateTime) IS NOT NULL
LIMIT 1

