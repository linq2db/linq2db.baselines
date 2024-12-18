﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	CAST([t1].[DateTimeValue] AS Date) = CAST(DATETIMEFROMPARTS(2009, 9, 20, 0, 0, 0, 0) AS Date) AND
	CAST([t1].[DateTimeValue] AS Date) IS NOT NULL

