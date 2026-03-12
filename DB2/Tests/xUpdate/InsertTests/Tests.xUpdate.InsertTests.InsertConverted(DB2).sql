-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

-- DB2 DB2.LUW DB2LUW
DECLARE @tt BigInt(8) -- Int64
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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 1000

