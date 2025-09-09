BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @dateTime  -- DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime)
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @dateTime  -- DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', @dateTime)
LIMIT 1

