﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012
DECLARE @DateTimeValue2 DateTime2
SET     @DateTimeValue2 = '2009-09-24T09:19:29.0900000'

SELECT
	Count(*)
FROM
	[LinqDataTypes] [x]
WHERE
	([x].[DateTimeValue2] IN (@DateTimeValue2) OR [x].[DateTimeValue2] IS NULL)

