BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @dateTime VarChar(23) -- AnsiString
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @dateTime VarChar(23) -- AnsiString
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime)
LIMIT 1

