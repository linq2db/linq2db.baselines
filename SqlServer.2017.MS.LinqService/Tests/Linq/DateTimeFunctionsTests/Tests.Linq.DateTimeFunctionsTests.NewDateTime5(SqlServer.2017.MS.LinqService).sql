﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

