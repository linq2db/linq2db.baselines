-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

-- DB2 DB2.LUW DB2LUW

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	101,
	3
)

-- DB2 DB2.LUW DB2LUW

UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = 4
WHERE
	"r".ID = 101 AND "r"."IntValue" = 3

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."IntValue" = 4

-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

