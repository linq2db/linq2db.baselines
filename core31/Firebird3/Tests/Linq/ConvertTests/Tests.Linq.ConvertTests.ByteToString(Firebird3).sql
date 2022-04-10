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
-- Firebird3 Firebird

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	Char_Length("p"."c1") > 0

