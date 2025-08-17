BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
	TRUE,
	@arr
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

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
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

