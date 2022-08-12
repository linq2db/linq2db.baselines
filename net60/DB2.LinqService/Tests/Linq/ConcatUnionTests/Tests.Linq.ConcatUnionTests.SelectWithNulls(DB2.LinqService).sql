BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
UNION ALL
SELECT
	Cast(NULL as Int),
	Cast(NULL as Decimal),
	Cast(NULL as timestamp),
	Cast(NULL as smallint),
	Cast(NULL as char(16) for bit data),
	Cast(NULL as VarBinary),
	Cast(NULL as SmallInt),
	Cast(NULL as NVarChar(255))
FROM
	"LinqDataTypes" "d"

