﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(quarter, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

