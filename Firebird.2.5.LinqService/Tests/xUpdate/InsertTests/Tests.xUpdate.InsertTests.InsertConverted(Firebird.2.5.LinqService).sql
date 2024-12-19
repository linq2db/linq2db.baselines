BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t".ID,
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

