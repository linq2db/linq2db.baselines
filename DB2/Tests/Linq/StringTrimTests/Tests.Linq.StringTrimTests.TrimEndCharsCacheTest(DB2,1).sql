-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM("t"."VarCharColumn", '.+')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

