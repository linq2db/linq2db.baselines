-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM("t"."CharColumn", '.+')
FROM
	"StringTrimTable" "t"

