BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	"t".ID IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"t".ID = "p".ID
	)

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

