﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[MoneyValue] > 1 AND ([t].[SmallIntValue] = 5 OR [t].[SmallIntValue] = 7 OR [t].[SmallIntValue] = 8)

