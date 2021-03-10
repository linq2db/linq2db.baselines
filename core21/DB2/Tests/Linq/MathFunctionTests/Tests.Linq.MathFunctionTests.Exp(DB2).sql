BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Exp(Float("p"."MoneyValue")))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Exp(Float("p"."MoneyValue"))) <> 0.10000000000000001 OR Floor(Exp(Float("p"."MoneyValue"))) IS NULL)

