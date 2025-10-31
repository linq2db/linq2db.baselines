-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Real) > 0

