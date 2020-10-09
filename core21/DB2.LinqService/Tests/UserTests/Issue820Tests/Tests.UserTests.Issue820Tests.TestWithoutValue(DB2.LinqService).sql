BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param SmallInt(2) -- Int16
SET     @param = 1

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
	@param = "_"."SmallIntValue"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
	"_"."SmallIntValue" IS NULL

