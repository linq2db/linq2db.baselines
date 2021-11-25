BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Power(Float("p"."MoneyValue"), 3))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Power(Float("p"."MoneyValue"), 3)) <> 0 OR Floor(Power(Float("p"."MoneyValue"), 3)) IS NULL)

