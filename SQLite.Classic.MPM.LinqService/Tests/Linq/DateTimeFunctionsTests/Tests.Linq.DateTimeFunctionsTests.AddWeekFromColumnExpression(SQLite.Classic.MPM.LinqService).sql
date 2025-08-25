BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST((([t].[SmallIntValue] + @part1) - @part2) * 7 AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

