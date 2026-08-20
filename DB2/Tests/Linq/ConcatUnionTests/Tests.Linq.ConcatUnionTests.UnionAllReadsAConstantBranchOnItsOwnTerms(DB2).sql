-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(NULL AS smallint),
	"x"."Id",
	"x"."Flag"
FROM
	"ConvertedFlagRow" "x"
UNION ALL
SELECT
	CAST(1 AS smallint),
	"x_1"."Id",
	CAST(NULL AS NChar(1))
FROM
	"ConvertedFlagRow" "x_1"

