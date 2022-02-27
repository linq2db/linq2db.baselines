BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p1*3) || ' Month')
FROM
	[LinqDataTypes] [t]

