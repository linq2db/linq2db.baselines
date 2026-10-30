-- SapHana.Native SapHana
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'
DECLARE @ints Integer -- Int32
SET     @ints = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = :"BinaryValue"
WHERE
	"t"."ID" = :"ints"

-- SapHana.Native SapHana
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0504030201'
DECLARE @ints Integer -- Int32
SET     @ints = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = :"BinaryValue"
WHERE
	"t"."ID" = :"ints"

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" IN (1, 2)

