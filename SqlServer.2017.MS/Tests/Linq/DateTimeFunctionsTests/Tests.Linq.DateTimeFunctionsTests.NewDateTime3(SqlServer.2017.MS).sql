﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 20, 35, 44, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 20, 35, 44, 0)) = 10

