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
	"BigIntValue",
	"IntValue"
)
VALUES
(
	101,
	4,
	10
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"r"."BigIntValue",
	"r"."IntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101

BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p1

