﻿BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff_Big(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

