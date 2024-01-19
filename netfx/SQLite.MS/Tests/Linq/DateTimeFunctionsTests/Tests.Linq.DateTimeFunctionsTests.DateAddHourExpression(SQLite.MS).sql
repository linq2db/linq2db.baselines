BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	Cast(StrFTime('%H', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Hour'))) as int)
FROM
	[LinqDataTypes] [t]

