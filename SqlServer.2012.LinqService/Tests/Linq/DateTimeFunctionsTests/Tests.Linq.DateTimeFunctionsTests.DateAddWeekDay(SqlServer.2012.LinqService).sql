﻿BeforeExecute
-- SqlServer.2012

SELECT
	Convert(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

