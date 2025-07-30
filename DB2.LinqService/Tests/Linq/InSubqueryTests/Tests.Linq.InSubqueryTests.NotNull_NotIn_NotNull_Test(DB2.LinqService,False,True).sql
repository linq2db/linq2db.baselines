BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	"t".ID NOT IN (
		SELECT
			"p".ID
		FROM
			"test_in_2" "p"
	)
ORDER BY
	"t".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

