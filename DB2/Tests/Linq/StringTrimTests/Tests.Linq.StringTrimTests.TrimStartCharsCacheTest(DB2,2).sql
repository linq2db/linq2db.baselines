-- DB2 DB2.LUW DB2LUW

SELECT
	LTRIM("t"."VarCharColumn", 'ab')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

