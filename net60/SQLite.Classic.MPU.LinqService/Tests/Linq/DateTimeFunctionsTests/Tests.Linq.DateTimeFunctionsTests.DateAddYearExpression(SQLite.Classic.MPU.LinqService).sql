BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 11

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Year')
FROM
	[LinqDataTypes] [t]

