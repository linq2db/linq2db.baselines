BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p*7) || ' Day'))
FROM
	[LinqDataTypes] [t]

