BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 1

SELECT
	Cast(StrFTime('%H', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Hour'))) as int)
FROM
	[LinqDataTypes] [t]

