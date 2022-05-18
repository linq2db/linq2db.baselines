﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

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
	11
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BigIntValue" = @TestField
WHERE
	"LinqDataTypes".ID = 101 AND "LinqDataTypes"."BigIntValue" = 11

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

