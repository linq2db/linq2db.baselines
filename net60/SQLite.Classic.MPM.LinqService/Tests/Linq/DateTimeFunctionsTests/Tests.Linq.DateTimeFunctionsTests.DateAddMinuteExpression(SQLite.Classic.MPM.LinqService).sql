BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 5

SELECT
	Cast(StrFTime('%M', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Minute'))) as int)
FROM
	[LinqDataTypes] [t]

