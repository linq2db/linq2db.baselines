BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"r".ID,
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"r".ID,
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 1

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char -- String
SET     @BoolValue = '0'
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
	"BoolValue" = CAST(@BoolValue AS CHAR(1)),
	"GuidValue" = CAST(@GuidValue AS CHAR(16) CHARACTER SET OCTETS),
	"SmallIntValue" = CAST(@SmallIntValue AS SmallInt),
	"IntValue" = CAST(@IntValue AS Int),
	"BigIntValue" = CAST(@BigIntValue AS BigInt),
	"StringValue" = CAST(@StringValue AS VARCHAR(1))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT FIRST 1
	"r".ID,
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = @ID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char -- String
SET     @BoolValue = '1'
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
	"BoolValue" = CAST(@BoolValue AS CHAR(1)),
	"GuidValue" = CAST(@GuidValue AS CHAR(16) CHARACTER SET OCTETS),
	"SmallIntValue" = CAST(@SmallIntValue AS SmallInt),
	"IntValue" = CAST(@IntValue AS Int),
	"BigIntValue" = CAST(@BigIntValue AS BigInt),
	"StringValue" = CAST(@StringValue AS VARCHAR(1))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"r".ID,
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 1

