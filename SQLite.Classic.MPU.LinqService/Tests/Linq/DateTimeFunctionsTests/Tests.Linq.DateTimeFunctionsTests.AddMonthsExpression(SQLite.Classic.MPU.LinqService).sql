BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = -2

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Month')
FROM
	[LinqDataTypes] [t]

