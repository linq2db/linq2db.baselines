BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 3

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Day'))
FROM
	[LinqDataTypes] [t]

