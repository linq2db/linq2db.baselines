﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	[t].[DateTimeValue] = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

