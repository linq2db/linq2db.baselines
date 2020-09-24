BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = -8

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p1 || ' Minute')
FROM
	[LinqDataTypes] [t]

