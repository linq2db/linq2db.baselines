BeforeExecute
-- Access.Odbc AccessODBC

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
	DateValue([_].[DateTimeValue]) = DateValue(#2009-09-20#)

