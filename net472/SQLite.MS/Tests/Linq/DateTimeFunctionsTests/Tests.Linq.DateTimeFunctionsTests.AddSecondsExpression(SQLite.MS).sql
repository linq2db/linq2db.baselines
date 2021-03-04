BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Double
SET     @p_1 = -35

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Second')
FROM
	[LinqDataTypes] [t]

