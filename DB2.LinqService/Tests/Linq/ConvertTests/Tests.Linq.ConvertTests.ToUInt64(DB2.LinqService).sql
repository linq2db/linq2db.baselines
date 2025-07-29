BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	Decimal(Floor("p"."MoneyValue"), 20, 0) > 0

