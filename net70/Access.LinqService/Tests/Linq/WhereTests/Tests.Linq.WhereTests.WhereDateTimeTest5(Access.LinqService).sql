BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #2009-09-20#

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
	DateValue([_].[DateTimeValue]) = @Date_1

