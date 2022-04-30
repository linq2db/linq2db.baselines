﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = '2009-09-24T09:19:29.090'

SELECT
	Count(*)
FROM
	[LinqDataTypes] [x]
WHERE
	[x].[DateTimeValue2] IN (@DateTimeValue2) OR [x].[DateTimeValue2] IS NULL

