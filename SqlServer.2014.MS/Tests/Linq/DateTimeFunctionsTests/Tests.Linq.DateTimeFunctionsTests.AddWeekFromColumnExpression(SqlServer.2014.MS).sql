BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	CAST(DateAdd(week, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

