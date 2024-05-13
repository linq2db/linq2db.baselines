BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p * 3 AS NVarChar(11)) || ' Month'))
FROM
	[LinqDataTypes] [t]

