﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

