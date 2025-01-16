BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	IIF([t1].[DateTimeValue] IS NOT NULL, DateValue([t1].[DateTimeValue]), NULL) = DateValue(DateSerial(2009, 9, 20))

