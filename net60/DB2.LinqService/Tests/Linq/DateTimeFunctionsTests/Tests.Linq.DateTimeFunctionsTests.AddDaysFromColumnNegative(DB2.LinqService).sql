BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5000
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2018-01-03-00.00.00.000000'
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 0
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'00000000000000000000000000000000'
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = -2
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@StringValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Timestamp(20) -- DateTime
SET     @p_1 = '2018-01-02-00.00.00.000000'

SELECT
	Count(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 5000 AND "t"."DateTimeValue" + "t"."SmallIntValue" Day < @p_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = 5000

