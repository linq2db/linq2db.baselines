﻿BeforeExecute
-- SqlServer.2017

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

