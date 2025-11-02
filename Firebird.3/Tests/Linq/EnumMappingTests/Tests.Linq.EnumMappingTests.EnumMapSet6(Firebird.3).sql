-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3

UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = 4
WHERE
	"r".ID = 101 AND "r"."IntValue" = 3

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."IntValue" = 4

-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

