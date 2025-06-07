BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(([t].[SmallIntValue] + @part1) - @part2 AS NVarChar(11)) || ' Second')
FROM
	[LinqDataTypes] [t]

