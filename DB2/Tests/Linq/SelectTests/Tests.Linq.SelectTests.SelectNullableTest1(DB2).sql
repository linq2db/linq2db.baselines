-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1000
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 0
DECLARE @GuidValue VarBinary -- Binary
SET     @GuidValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = 1000
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = 1000

