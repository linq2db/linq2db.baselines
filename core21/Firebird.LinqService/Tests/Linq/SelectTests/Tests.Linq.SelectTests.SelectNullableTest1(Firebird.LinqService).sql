﻿BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1000
DECLARE @MoneyValue Decimal(1,0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 TimeStamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char(1) -- String
SET     @BoolValue = '0'
DECLARE @GuidValue Guid
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

BeforeExecute
-- Firebird
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
WHERE
	"t1".ID = 1000

BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = 1000

