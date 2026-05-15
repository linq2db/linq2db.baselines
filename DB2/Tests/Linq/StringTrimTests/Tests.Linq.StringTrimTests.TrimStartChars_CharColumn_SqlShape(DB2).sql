-- DB2 DB2.LUW DB2LUW

SELECT
	LTRIM("t"."CharColumn", '.+')
FROM
	"StringTrimTable" "t"

