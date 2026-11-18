-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:"ID",
	100,
	200
)

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST("t"."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(38, 10))
WHERE
	"t"."ID" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST("t"."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(38, 10))
WHERE
	"t"."ID" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	"t"."ID",
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
	"t"."ID" = :"id"
LIMIT 2

