﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

