﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd(year, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

