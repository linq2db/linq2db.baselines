-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	RIGHT("r".S, "r".N)
FROM
	"RightValues" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r".S,
	"r".N
FROM
	"RightValues" "r"
WHERE
	RIGHT("r".S, "r".N) = 'ohn'

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

