BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	Count(*),
	Sum(0 / 1000),
	Max(0 / 1000)
FROM
	"LinqDataTypes" "t1"
GROUP BY
	"t1".ID

