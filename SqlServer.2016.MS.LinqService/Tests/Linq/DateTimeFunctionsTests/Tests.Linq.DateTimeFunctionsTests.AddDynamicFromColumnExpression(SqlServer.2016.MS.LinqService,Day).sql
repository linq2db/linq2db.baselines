﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(day, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

