BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	CAST("LinqDataTypes"."SmallIntValue" AS Int)
)
VALUES
(
	CAST(@ID AS Int),
	100,
	200
)

