BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	TRUE,
	NULL
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

