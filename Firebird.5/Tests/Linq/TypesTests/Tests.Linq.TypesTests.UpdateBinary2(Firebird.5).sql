BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = @ID

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0504030201'
DECLARE @ID Integer -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = @ID

BeforeExecute
-- Firebird.5 Firebird4

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

