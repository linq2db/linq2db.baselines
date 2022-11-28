BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = -8

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Minute')
FROM
	[LinqDataTypes] [t]

