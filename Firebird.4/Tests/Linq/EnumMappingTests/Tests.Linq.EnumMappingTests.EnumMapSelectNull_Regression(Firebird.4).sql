﻿BeforeExecute
--  Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
--  Firebird.4 Firebird4

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
--  Firebird.4 Firebird4

SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

