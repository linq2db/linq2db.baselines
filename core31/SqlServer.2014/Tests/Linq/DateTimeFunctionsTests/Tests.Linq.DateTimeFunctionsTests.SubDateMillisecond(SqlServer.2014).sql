﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

