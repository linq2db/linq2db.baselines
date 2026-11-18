-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

-- SapHana.Native SapHana
DECLARE @arr VarBinary(4) -- Binary
SET     @arr = x'01020304'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	:"arr"
)

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1001
LIMIT 2

-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

