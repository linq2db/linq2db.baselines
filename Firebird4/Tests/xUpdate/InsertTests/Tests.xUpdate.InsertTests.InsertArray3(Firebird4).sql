BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird4 Firebird
DECLARE @arr Binary(4)
SET     @arr = X'01020304'

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
	CAST(@arr AS BLOB)
)

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

