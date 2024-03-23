BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p*3) || ' Month'))
FROM
	[LinqDataTypes] [t]

