BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 3

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Day')
FROM
	[LinqDataTypes] [t]

