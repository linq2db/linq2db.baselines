BeforeExecute
-- Access.Odbc AccessODBC

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
	(Iif([_].[BoolValue] IN (True), True, False) = True AND Iif([_].[BoolValue] IN (True), True, False) IS NOT NULL)

