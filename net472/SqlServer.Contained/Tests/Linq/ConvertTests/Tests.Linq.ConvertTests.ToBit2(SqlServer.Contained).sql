﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

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
	Convert(Bit, [t].[MoneyValue] - 4.5) = 0

