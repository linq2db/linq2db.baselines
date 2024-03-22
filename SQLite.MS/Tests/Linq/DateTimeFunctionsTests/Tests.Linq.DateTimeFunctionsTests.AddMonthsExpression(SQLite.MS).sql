BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = -2

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Month'))
FROM
	[LinqDataTypes] [t]

