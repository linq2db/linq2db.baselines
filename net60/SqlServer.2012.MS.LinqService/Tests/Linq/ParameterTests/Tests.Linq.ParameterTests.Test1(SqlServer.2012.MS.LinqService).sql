﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
	[t].[DateTimeValue] = '2020-02-29T17:54:55.123'

