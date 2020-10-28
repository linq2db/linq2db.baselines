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
-- Firebird

SELECT
	Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS)
FROM
	"LinqDataTypes" "t"
WHERE
	Char_Length(Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS)) > 0

