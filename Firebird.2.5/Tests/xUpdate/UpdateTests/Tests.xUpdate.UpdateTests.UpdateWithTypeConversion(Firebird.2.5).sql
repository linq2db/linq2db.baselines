BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
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

