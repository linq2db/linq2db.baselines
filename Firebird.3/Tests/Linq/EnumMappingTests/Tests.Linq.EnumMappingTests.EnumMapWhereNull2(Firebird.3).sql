BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "LinqDataTypes"
(
	ID
)
VALUES
(
	101
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" IS NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

