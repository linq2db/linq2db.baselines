-- Firebird.3 Firebird3
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'
DECLARE @ints Integer -- Int32
SET     @ints = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = @ints

-- Firebird.3 Firebird3
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0504030201'
DECLARE @ints Integer -- Int32
SET     @ints = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = @ints

-- Firebird.3 Firebird3
SELECT
	"t".ID,
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
	"t".ID IN (1, 2)

