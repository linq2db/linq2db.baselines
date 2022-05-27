﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = DATETIME2FROMPARTS(2001, 1, 11, 1, 11, 21, 1000000, 7)

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] IN (@DateTimeValue)

