﻿BeforeExecute
-- SqlServer.2005
DECLARE @DateTimeValue_1 DateTime
SET     @DateTimeValue_1 = '2009-01-01T00:00:00'

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[DateTimeValue] > @DateTimeValue_1

