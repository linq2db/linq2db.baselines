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
-- DB2 DB2.LUW DB2LUW
DECLARE @DateTimeValue_1 Timestamp(20) -- DateTime
SET     @DateTimeValue_1 = '2009-09-27-00.00.00.000000'

SELECT 
	"_".ID, 
	"_"."MoneyValue", 
	"_"."DateTimeValue", 
	"_"."DateTimeValue2", 
	"_"."BoolValue", 
	"_"."GuidValue", 
	"_"."SmallIntValue", 
	"_"."IntValue", 
	"_"."BigIntValue", 
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_"."DateTimeValue" = @DateTimeValue_1

