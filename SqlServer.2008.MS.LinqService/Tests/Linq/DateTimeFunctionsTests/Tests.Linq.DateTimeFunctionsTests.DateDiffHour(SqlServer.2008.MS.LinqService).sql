﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

