﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, DateAdd(year, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

