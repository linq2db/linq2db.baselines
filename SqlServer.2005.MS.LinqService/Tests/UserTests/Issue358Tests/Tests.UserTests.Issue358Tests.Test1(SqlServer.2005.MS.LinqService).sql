﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
	([_].[BigIntValue] <> 2 OR [_].[BigIntValue] IS NULL)

