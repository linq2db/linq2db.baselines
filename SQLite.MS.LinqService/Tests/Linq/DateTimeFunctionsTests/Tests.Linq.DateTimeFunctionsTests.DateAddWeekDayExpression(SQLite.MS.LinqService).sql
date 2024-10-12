BeforeExecute
-- SQLite.MS SQLite
DECLARE @part2  -- Int32
SET     @part2 = 3
DECLARE @part1  -- Int32
SET     @part1 = 2

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part2 - @part1 AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

