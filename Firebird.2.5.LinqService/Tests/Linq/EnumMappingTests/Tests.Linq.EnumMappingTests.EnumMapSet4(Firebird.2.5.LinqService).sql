BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" "r"
SET
	"BigIntValue" = CAST(@TestField AS BigInt)
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 11

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

