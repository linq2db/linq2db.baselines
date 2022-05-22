BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2009, 9, 20, 0, 0, 0, 0, 7)

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
	Convert(Date, [_].[DateTimeValue]) = @Date_1

