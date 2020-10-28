BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p1

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"entity".ID,
	"entity"."BigIntValue",
	"entity"."IntValue"
FROM
	"LinqDataTypes" "entity"
WHERE
	"entity"."BigIntValue" = 12

BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p1

