BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(-("p"."MoneyValue" + 1))
FROM
	"LinqDataTypes" "p"
WHERE
	Floor(-("p"."MoneyValue" + 1)) <> 0

