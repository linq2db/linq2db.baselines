-- SQLite.MS SQLite
DECLARE @Date  -- Int32
SET     @Date = 5

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Date AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

