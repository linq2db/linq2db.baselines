﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

