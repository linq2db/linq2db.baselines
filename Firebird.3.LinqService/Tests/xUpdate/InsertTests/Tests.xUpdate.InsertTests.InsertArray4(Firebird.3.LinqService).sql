BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird.3 Firebird3
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
	CAST(@ID AS Int),
	CAST(@MoneyValue AS Decimal),
	CAST(@DateTimeValue AS TimeStamp),
	CAST(@BoolValue AS BOOLEAN),
	CAST(@GuidValue AS CHAR(16) CHARACTER SET OCTETS),
	CAST(@BinaryValue AS BLOB),
	CAST(@SmallIntValue AS SmallInt)
)

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

