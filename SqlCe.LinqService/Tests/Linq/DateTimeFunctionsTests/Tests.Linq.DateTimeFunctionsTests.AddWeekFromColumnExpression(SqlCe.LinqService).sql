﻿BeforeExecute
-- SqlCe
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(week, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

