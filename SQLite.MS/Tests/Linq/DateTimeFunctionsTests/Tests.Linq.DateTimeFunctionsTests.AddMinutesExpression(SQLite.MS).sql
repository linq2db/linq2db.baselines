BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = -8

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Minute')
FROM
	[LinqDataTypes] [t]

