BeforeExecute
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
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @MoneyValue (5,4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2001-01-11-01.11.21.100000'
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 0
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'659112EFFE6FF94DBB6BBB16E413C883'
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = @MoneyValue,
	"LinqDataTypes"."DateTimeValue" = @DateTimeValue,
	"LinqDataTypes"."DateTimeValue2" = @DateTimeValue2,
	"LinqDataTypes"."BoolValue" = @BoolValue,
	"LinqDataTypes"."GuidValue" = @GuidValue,
	"LinqDataTypes"."SmallIntValue" = @SmallIntValue,
	"LinqDataTypes"."IntValue" = @IntValue,
	"LinqDataTypes"."BigIntValue" = @BigIntValue,
	"LinqDataTypes"."StringValue" = @StringValue
WHERE
	"LinqDataTypes".ID = @ID

BeforeExecute
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
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @MoneyValue (5,4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2001-01-11-01.11.21.100000'
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue SmallInt(4) -- Int16
SET     @BoolValue = 1
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'659112EFFE6FF94DBB6BBB16E413C883'
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = @MoneyValue,
	"LinqDataTypes"."DateTimeValue" = @DateTimeValue,
	"LinqDataTypes"."DateTimeValue2" = @DateTimeValue2,
	"LinqDataTypes"."BoolValue" = @BoolValue,
	"LinqDataTypes"."GuidValue" = @GuidValue,
	"LinqDataTypes"."SmallIntValue" = @SmallIntValue,
	"LinqDataTypes"."IntValue" = @IntValue,
	"LinqDataTypes"."BigIntValue" = @BigIntValue,
	"LinqDataTypes"."StringValue" = @StringValue
WHERE
	"LinqDataTypes".ID = @ID

