﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	CONVERT(Date, DateAdd(week, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

