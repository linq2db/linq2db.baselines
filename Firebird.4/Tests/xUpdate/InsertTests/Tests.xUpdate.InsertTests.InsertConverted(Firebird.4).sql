-- Firebird.4 Firebird4

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4

SELECT
	"t".ID,
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

