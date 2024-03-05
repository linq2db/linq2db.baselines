BeforeExecute
-- SQLite.Classic SQLite
DECLARE @part1  -- Int16
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],((Cast([t].[SmallIntValue] as INTEGER) + @part1) - @part2) || ' Day')
FROM
	[LinqDataTypes] [t]

