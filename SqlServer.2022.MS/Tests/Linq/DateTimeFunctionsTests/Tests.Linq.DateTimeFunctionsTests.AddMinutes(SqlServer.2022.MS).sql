﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

