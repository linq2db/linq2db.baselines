BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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
-- DB2 DB2.LUW DB2LUW

SELECT
	RTrim(Char(SmallInt("t".ID)))
FROM
	"LinqDataTypes" "t"
WHERE
	CHARACTER_LENGTH(RTrim(Char(SmallInt("t".ID))),CODEUNITS32) > 0

