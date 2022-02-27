BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = 41

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p1 || ' Second')
FROM
	[LinqDataTypes] [t]

