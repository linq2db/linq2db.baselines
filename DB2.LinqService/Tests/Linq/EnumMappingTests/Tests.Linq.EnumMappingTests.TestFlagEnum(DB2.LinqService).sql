BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t".ID,
	"t"."IntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	BitAnd("t"."IntValue", 1) <> 0

