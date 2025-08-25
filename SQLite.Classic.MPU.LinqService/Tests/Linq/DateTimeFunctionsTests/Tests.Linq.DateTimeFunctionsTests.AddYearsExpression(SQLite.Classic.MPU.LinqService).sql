BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Date  -- Int32
SET     @Date = 1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Date AS NVarChar(11)) || ' Year'))
FROM
	[LinqDataTypes] [t]

