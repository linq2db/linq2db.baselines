﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2009, 9, 20, 0, 0, 0, 0, 7)

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
	Convert(Date, [t].[DateTimeValue]) > @Date

