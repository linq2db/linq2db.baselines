BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(Cast((([t].[SmallIntValue] + @part1) - @part2) as Float)*7) || ' Day')
FROM
	[LinqDataTypes] [t]

