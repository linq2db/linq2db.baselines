﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @param SmallInt -- Int16
SET     @param = 1

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
WHERE
	CAST(@param AS Int) = [t1].[SmallIntValue] OR CAST(@param AS Int) IS NULL AND [t1].[SmallIntValue] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
WHERE
	1 = 0

