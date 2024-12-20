BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @param BigInt(8) -- Int64
SET     @param = 11

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
SELECT
	"r".ID,
	CAST(@param AS BigInt)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 11

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

