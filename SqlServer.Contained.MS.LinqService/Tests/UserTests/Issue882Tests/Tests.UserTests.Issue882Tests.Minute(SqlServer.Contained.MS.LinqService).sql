﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

