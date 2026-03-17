-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS BigInt) > 0

