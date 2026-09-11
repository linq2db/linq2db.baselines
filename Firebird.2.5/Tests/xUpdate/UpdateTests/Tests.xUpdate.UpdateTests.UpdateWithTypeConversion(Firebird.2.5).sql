-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	@ID,
	100,
	200
)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST(Floor("t"."MoneyValue") AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(18, 10))
WHERE
	"t".ID = @id

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST(Floor("t"."MoneyValue") AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(18, 10))
WHERE
	"t".ID = @id

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT FIRST 2
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
	"t".ID = @id

