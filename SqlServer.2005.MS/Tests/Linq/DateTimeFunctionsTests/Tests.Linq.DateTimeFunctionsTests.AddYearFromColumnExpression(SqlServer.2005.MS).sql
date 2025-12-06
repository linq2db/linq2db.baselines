-- SqlServer.2005.MS SqlServer.2005
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(year, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

