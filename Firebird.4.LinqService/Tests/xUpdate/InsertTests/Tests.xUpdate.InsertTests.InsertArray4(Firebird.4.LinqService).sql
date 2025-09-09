BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = TRUE
DECLARE @GuidValue Guid
SET     @GuidValue = X'00000000000000000000000000000000'
DECLARE @BinaryValue Binary(4)
SET     @BinaryValue = X'01020304'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 0

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue"
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue
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

