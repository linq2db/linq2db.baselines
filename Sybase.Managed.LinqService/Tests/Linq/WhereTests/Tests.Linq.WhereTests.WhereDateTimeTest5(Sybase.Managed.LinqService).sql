BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Date DateTime
SET     @Date = '2009-09-20'

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

