﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

