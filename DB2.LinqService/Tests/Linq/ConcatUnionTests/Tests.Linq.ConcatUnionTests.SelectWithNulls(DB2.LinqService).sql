BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
	CAST(NULL AS Int),
	CAST(NULL AS Decimal(18, 10)),
	CAST(NULL AS timestamp),
	CAST(NULL AS smallint),
	CAST(NULL AS char(16) for bit data),
	CAST(NULL AS VARBINARY(32672)),
	CAST(NULL AS SmallInt),
	CAST(NULL AS NVarChar(255))
FROM
	"LinqDataTypes" "d"

