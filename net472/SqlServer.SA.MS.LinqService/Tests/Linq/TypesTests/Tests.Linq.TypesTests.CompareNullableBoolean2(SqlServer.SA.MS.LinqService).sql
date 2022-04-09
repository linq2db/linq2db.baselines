﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
		INNER JOIN [LinqDataTypes] [t2] ON [t1].[ID] = [t2].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @param4 Bit -- Boolean
SET     @param4 = 0

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
		INNER JOIN [LinqDataTypes] [t2] ON [t1].[ID] = [t2].[ID]
WHERE
	[t1].[BoolValue] = @param4

