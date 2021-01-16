BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	Cast(@ID as Int),
	Cast(@MoneyValue as Decimal),
	Cast(@SmallIntValue as SmallInt)
)

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = 2000,
	"LinqDataTypes"."SmallIntValue" = 200
WHERE
	"LinqDataTypes".ID = @ID

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @ID Integer -- Int32
SET     @ID = 1001

SELECT FIRST @take
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = @ID

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = @ID

