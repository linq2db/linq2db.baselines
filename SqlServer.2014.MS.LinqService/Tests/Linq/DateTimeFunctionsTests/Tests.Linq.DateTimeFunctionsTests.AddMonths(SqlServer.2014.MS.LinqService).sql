﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, DateAdd(month, -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

