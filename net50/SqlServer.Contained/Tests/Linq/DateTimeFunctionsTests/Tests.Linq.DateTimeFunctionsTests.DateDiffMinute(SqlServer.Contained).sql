﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

