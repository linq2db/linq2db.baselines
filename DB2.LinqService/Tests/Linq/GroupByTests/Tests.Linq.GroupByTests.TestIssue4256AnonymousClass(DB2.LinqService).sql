BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"it_1"."IsActive",
	"it_1"."Other"
FROM
	(
		SELECT
			1 as "IsActive",
			CAST("it"."SmallIntValue" <> 0 AS smallint) as "Other"
		FROM
			"LinqDataTypes" "it"
	) "it_1"
GROUP BY
	"it_1"."IsActive",
	"it_1"."Other"

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

