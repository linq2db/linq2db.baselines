﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

