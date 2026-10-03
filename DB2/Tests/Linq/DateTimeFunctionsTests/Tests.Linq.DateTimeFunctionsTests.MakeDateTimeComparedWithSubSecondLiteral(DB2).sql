-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(Mod("p".ID, 1), 2, '0') || '.000' AS timestamp) < '2010-01-01-10.00.00.500000'

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(Mod("p".ID, 1), 2, '0') || '.000' AS timestamp) >= '2010-01-01-10.00.00.500000'

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(Mod("p".ID, 1), 2, '0') || '.000' AS timestamp) = '2010-01-01-10.00.00.500000'

