﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

