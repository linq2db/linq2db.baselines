BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @Date  -- Int32
SET     @Date = -2

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Date AS NVarChar(11)) || ' Month'))
FROM
	[LinqDataTypes] [t]

