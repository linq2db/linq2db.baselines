BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t2".F2
FROM
	(
		SELECT DISTINCT
			"t1".F1,
			"t1".F2
		FROM
			"DistinctOrderByTable" "t1"
	) "t2"
ORDER BY
	"t2".F1
OFFSET 2 ROWS

