BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value * 7 AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

