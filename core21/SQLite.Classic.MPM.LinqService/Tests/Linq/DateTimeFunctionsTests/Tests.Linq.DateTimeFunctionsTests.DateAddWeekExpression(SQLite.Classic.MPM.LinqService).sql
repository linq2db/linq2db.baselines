BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p1*7) || ' Day')
FROM
	[LinqDataTypes] [t]

