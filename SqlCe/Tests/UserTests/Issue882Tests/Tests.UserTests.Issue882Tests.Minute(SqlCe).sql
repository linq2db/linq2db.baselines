﻿BeforeExecute
--  SqlCe

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7 as [c1]
FROM
	[LinqDataTypes] [t]

