BeforeExecute
-- SqlServer.2008
DECLARE @Date DateTime2
SET     @Date = CAST('2009-09-20T00:00:00.0000000' AS DATETIME2)

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
	Convert(Date, [_].[DateTimeValue]) = @Date

