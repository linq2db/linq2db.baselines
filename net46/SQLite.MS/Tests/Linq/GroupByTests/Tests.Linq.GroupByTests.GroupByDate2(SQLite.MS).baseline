BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.MS SQLite

SELECT
	Sum([t1].[MoneyValue]),
	[t1].[c2],
	[t1].[c1]
FROM
	(
		SELECT
			Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [c1],
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [c2],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

