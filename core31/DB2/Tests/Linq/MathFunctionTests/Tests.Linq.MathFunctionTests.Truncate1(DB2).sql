BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Truncate("p"."MoneyValue", 0)
FROM
	"LinqDataTypes" "p"
WHERE
	(Truncate("p"."MoneyValue", 0) <> 0.1 OR Truncate("p"."MoneyValue", 0) IS NULL)

