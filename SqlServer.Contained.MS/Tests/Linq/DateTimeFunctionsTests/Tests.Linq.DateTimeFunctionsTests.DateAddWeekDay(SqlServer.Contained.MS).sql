﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	CAST(DateAdd(weekday, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

