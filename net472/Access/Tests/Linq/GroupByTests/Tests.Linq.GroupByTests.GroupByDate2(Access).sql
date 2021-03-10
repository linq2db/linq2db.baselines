BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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

BeforeExecute
-- Access AccessOleDb

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart('yyyy', [selectParam].[DateTimeValue]),
	DatePart('m', [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart('m', [selectParam].[DateTimeValue]),
	DatePart('yyyy', [selectParam].[DateTimeValue])

