﻿BeforeExecute
-- SqlServer.2005
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(week, Convert(Float, ([t].[SmallIntValue] + @part1) - @part2), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

