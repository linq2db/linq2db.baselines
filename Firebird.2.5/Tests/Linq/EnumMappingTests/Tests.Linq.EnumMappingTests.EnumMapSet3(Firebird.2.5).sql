-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird

UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = 4
WHERE
	"r".ID = 101 AND "r"."IntValue" = 3

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."IntValue" = 4

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

