BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 41

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Second')
FROM
	[LinqDataTypes] [t]

