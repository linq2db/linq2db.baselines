-- SqlServer.2025 SqlServer.2022
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(hour, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

