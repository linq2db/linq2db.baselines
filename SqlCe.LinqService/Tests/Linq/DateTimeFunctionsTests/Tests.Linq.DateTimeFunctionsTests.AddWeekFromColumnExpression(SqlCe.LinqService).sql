﻿BeforeExecute
-- SqlCe
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	Cast(Floor(Cast(DateAdd(week, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

