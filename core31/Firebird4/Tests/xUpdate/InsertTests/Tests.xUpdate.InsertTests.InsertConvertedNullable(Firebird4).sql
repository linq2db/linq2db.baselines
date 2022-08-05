﻿BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID >= 1000

BeforeExecute
-- Firebird4 Firebird
DECLARE @tt BigInt -- Int64
SET     @tt = 600000000

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"t".ID,
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID >= 1000

