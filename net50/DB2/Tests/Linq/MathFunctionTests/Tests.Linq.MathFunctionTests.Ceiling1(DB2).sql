BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Ceiling(-("p"."MoneyValue" + 1))
FROM
	"LinqDataTypes" "p"
WHERE
	Ceiling(-("p"."MoneyValue" + 1)) <> 0

