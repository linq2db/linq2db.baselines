﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

