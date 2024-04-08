BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 2
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

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

