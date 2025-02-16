BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST(Floor("t"."MoneyValue") AS SmallInt),
	"MoneyValue" = Decimal("t"."SmallIntValue", 18, 10)
WHERE
	"t".ID = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST(Floor("t"."MoneyValue") AS SmallInt),
	"MoneyValue" = Decimal("t"."SmallIntValue", 18, 10)
WHERE
	"t".ID = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
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
FETCH NEXT 2 ROWS ONLY

