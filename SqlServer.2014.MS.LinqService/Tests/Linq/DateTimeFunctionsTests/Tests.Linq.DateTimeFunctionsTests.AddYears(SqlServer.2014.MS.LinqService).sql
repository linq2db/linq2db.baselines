﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

