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
	Mod(Cast(Floor(Extract(day from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

