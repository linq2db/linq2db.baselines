﻿BeforeExecute
--  SqlCe

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

