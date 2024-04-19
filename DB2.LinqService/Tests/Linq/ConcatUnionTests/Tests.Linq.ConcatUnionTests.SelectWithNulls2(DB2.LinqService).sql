﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
UNION ALL
SELECT
	CAST(NULL AS Int),
	CAST(NULL AS Decimal),
	CAST(NULL AS timestamp),
	CAST(NULL AS timestamp),
	CAST(NULL AS smallint),
	CAST(NULL AS char(16) for bit data),
	CAST(NULL AS SmallInt),
	CAST(NULL AS Int),
	CAST(NULL AS BigInt),
	CAST(NULL AS NVarChar(255))
FROM
	"LinqDataTypes" "d"

