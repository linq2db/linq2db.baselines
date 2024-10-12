BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 6
DECLARE @part2  -- Int32
SET     @part2 = 3

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part1 - @part2 AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

