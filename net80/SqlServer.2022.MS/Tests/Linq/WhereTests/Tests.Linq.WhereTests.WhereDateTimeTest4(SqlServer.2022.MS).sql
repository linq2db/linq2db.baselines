BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = DATETIME2FROMPARTS(2009, 9, 27, 0, 0, 0, 0, 7)

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
	[_].[DateTimeValue] = @DateTimeValue

