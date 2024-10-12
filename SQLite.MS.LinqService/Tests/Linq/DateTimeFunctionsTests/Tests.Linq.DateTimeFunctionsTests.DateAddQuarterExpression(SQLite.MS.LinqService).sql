BeforeExecute
-- SQLite.MS SQLite
DECLARE @part2  -- Int32
SET     @part2 = 5
DECLARE @part1  -- Int32
SET     @part1 = 6

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST((@part2 - @part1) * 3 AS NVarChar(11)) || ' Month'))
FROM
	[LinqDataTypes] [t]

