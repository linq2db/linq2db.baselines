﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

