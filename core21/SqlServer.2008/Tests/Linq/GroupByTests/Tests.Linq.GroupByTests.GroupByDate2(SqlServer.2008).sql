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
-- SqlServer.2008

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart(year, [selectParam].[DateTimeValue]),
	DatePart(month, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(month, [selectParam].[DateTimeValue]),
	DatePart(year, [selectParam].[DateTimeValue])

