BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.Classic SQLite

SELECT
	Sum([selectParam].[MoneyValue]),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)

