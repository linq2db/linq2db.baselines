BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Round("p"."MoneyValue", 1)
FROM
	"LinqDataTypes" "p"
WHERE
	Round("p"."MoneyValue", 1) <> 0

