﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	DateDiff_Big(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

