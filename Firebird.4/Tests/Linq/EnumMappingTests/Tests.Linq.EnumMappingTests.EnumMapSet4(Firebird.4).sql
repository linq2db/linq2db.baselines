-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

-- Firebird.4 Firebird4

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	11
)

-- Firebird.4 Firebird4
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" "r"
SET
	"BigIntValue" = CAST(@TestField AS BigInt)
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 11

-- Firebird.4 Firebird4

SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

