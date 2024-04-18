BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."GuidValue"
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = TRUE
DECLARE @GuidValue Guid
SET     @GuidValue = X'EF1291656FFE4DF9BB6BBB16E413C883'
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
-- Firebird.3 Firebird3
DECLARE @GuidValue Guid
SET     @GuidValue = X'EF1291656FFE4DF9BB6BBB16E413C883'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."GuidValue" = @GuidValue
WHERE
	"LinqDataTypes".ID = @ID

