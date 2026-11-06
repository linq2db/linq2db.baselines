-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	CAST(NULL AS smallint)
FROM
	"NullableFlagTable" "r"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1"."Flag"
FROM
	"NullableFlagTable" "t1"

