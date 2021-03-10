BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Round(Float("p"."MoneyValue"), 0)
FROM
	"LinqDataTypes" "p"
WHERE
	(Round(Float("p"."MoneyValue"), 0) <> 0 OR Round(Float("p"."MoneyValue"), 0) IS NULL)

