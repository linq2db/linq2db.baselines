﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
--  Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	@Id,
	@TestField
)

BeforeExecute
--  Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
--  Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

