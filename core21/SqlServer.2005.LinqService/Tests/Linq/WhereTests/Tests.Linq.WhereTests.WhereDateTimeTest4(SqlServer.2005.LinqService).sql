﻿BeforeExecute
-- SqlServer.2005
DECLARE @DateTimeValue_1 DateTime
SET     @DateTimeValue_1 = '2009-09-27T00:00:00'

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[DateTimeValue] = @DateTimeValue_1

