﻿BeforeExecute
-- SqlCe
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(minute, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]) as [c1]
FROM
	[LinqDataTypes] [t]

