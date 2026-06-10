-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."IntValue"
FROM
	"TestTable5" "t"
WHERE
	BitAnd("t"."IntValue", 1) <> 0

