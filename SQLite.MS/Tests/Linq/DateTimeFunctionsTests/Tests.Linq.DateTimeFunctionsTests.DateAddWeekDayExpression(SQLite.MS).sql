BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

