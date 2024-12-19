BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	101,
	3
)

BeforeExecute
-- Firebird.5 Firebird4

UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = 4
WHERE
	"r".ID = 101 AND "r"."IntValue" = 3

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."IntValue" = 4

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

