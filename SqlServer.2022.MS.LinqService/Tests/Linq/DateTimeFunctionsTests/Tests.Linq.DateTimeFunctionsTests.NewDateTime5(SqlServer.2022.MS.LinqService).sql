﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

