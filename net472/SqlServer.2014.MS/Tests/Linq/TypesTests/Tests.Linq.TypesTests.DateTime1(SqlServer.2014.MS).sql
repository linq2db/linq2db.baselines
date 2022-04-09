﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Date_1 DateTime2
SET     @Date_1 = '2009-09-20T00:00:00.0000000'

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
	Convert(Date, [t].[DateTimeValue]) > @Date_1

