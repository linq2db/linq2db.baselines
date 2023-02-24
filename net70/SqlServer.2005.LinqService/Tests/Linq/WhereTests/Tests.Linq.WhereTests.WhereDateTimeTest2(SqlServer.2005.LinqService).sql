﻿BeforeExecute
-- SqlServer.2005
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = CAST('2009-01-01T00:00:00.000' AS DATETIME)

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
	[_].[DateTimeValue] > @DateTimeValue

