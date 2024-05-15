BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 1
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'00000000000000000000000000000000'
DECLARE @BinaryValue VarBinary(4) -- Binary
SET     @BinaryValue = BX'01020304'
DECLARE @SmallIntValue SmallInt(2) -- Int16
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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

