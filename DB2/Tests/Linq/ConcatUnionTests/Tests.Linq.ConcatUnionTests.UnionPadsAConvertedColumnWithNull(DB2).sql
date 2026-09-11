-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	"x"."Flag"
FROM
	"ConvertedFlagRow" "x"
UNION
SELECT
	"x_1"."Id",
	CAST(NULL AS NChar(1))
FROM
	"ConvertedFlagRow" "x_1"

