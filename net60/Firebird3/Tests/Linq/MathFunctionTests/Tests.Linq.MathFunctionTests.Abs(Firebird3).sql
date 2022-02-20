BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Firebird3 Firebird

SELECT
	Abs("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Abs("p"."MoneyValue") > 0

