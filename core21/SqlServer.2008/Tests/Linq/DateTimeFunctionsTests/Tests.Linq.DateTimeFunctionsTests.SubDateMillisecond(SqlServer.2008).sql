﻿BeforeExecute
-- SqlServer.2008

SELECT
	DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

