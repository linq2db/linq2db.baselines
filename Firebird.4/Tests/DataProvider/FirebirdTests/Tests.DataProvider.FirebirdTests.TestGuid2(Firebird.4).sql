BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."GuidValue"
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird.4 Firebird4

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
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
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
	"LinqDataTypes" "t1"
SET
	"MoneyValue" = CAST(@MoneyValue AS Decimal(18, 10)),
	"DateTimeValue" = CAST(@DateTimeValue AS TimeStamp),
	"DateTimeValue2" = CAST(@DateTimeValue2 AS TimeStamp),
	"BoolValue" = CAST(@BoolValue AS BOOLEAN),
	"GuidValue" = CAST(@GuidValue AS BINARY(16)),
	"SmallIntValue" = CAST(@SmallIntValue AS SmallInt),
	"IntValue" = CAST(@IntValue AS Int),
	"BigIntValue" = CAST(@BigIntValue AS BigInt),
	"StringValue" = CAST(@StringValue AS VARCHAR(1))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @GuidValue Guid
SET     @GuidValue = X'EF1291656FFE4DF9BB6BBB16E413C883'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"GuidValue" = CAST(@GuidValue AS BINARY(16))
WHERE
	"t".ID = @ID

