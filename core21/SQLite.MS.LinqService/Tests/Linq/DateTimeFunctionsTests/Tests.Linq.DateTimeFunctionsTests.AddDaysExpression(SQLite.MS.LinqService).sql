BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1  -- Int32
SET     @p1 = 5

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p1 || ' Day')
FROM
	[LinqDataTypes] [t]

