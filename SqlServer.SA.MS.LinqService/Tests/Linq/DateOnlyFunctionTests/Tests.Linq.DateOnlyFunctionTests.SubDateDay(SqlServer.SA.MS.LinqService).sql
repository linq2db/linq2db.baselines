﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

