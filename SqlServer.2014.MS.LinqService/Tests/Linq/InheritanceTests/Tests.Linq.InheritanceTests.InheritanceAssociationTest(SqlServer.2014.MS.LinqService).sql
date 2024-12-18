﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[a_A1].[ID],
	[a_A2].[ID]
FROM
	[LinqDataTypes] [ia]
		LEFT JOIN [LinqDataTypes] [a_A1] ON [ia].[GuidValue] = [a_A1].[GuidValue] AND [a_A1].[ID] = 2 AND [a_A1].[ID] IS NOT NULL
		LEFT JOIN [LinqDataTypes] [a_A2] ON [ia].[GuidValue] = [a_A2].[GuidValue] AND ([a_A2].[ID] <> 2 OR [a_A2].[ID] IS NULL)

