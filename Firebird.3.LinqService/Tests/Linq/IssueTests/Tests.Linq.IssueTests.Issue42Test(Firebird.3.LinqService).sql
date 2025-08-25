BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
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
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
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
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = FALSE
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
	"MoneyValue" = CAST(@MoneyValue AS Decimal(3, 2)),
	"DateTimeValue" = CAST(@DateTimeValue AS TimeStamp),
	"DateTimeValue2" = CAST(@DateTimeValue2 AS TimeStamp),
	"BoolValue" = CAST(@BoolValue AS BOOLEAN),
	"GuidValue" = CAST(@GuidValue AS CHAR(16) CHARACTER SET OCTETS),
	"SmallIntValue" = CAST(@SmallIntValue AS SmallInt),
	"IntValue" = CAST(@IntValue AS Int),
	"BigIntValue" = CAST(@BigIntValue AS BigInt),
	"StringValue" = CAST(@StringValue AS VARCHAR(1))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
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
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
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
	"MoneyValue" = CAST(@MoneyValue AS Decimal(3, 2)),
	"DateTimeValue" = CAST(@DateTimeValue AS TimeStamp),
	"DateTimeValue2" = CAST(@DateTimeValue2 AS TimeStamp),
	"BoolValue" = CAST(@BoolValue AS BOOLEAN),
	"GuidValue" = CAST(@GuidValue AS CHAR(16) CHARACTER SET OCTETS),
	"SmallIntValue" = CAST(@SmallIntValue AS SmallInt),
	"IntValue" = CAST(@IntValue AS Int),
	"BigIntValue" = CAST(@BigIntValue AS BigInt),
	"StringValue" = CAST(@StringValue AS VARCHAR(1))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
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
FETCH NEXT 1 ROWS ONLY

