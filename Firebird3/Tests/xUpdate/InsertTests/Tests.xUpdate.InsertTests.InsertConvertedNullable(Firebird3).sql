BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

BeforeExecute
-- Firebird3 Firebird
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
	CAST(@tt AS BigInt)
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"t".ID,
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

