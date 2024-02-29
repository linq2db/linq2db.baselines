BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 41

SELECT
	Cast(StrFTime('%S', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Second'))) as int)
FROM
	[LinqDataTypes] [t]

