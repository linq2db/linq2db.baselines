BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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

BeforeExecute
-- Firebird3 Firebird
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char(1) -- String
SET     @BoolValue = '0'
DECLARE @GuidValue Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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

BeforeExecute
-- Firebird3 Firebird
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char(1) -- String
SET     @BoolValue = '1'
DECLARE @GuidValue Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
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

