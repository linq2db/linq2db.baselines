﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
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
	[t].[MoneyValue] * [t].[ID] = 1.11

