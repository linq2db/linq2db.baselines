﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	[_].[DateTimeValue] > CAST('2009-01-01T00:00:00.0000000' AS DATETIME2)

