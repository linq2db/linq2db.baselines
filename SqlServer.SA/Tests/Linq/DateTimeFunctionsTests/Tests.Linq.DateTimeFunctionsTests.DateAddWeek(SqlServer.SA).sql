﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST(DateAdd(week, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

