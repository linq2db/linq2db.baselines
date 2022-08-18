BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = DATETIME2FROMPARTS(2009, 9, 27, 0, 0, 0, 0, 7)

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
	[_].[DateTimeValue] = @DateTimeValue

