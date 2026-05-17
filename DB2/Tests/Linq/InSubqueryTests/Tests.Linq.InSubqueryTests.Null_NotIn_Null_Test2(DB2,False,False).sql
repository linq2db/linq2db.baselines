-- DB2 DB2.LUW DB2LUW

SELECT
	"t".PK,
	"t".ID,
	"t".GV
FROM
	"test_in_1" "t"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"t".ID = "p".ID
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".PK,
	"t1".ID,
	"t1".GV
FROM
	"test_in_1" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".PK,
	"t1".ID,
	"t1".GV
FROM
	"test_in_2" "t1"

