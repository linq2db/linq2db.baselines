﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

