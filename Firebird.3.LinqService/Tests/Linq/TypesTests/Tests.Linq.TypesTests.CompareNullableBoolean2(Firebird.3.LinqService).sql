BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
		INNER JOIN "LinqDataTypes" "t2" ON "t1".ID = "t2".ID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @param2 Boolean
SET     @param2 = FALSE

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
		INNER JOIN "LinqDataTypes" "t2" ON "t1".ID = "t2".ID
WHERE
	"t1"."BoolValue" = @param2

