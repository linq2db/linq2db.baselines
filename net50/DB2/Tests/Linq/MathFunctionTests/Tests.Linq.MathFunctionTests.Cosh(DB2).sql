BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Cosh(Float("p"."MoneyValue") / 15) * 15)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Cosh(Float("p"."MoneyValue") / 15) * 15) <> 0.10000000000000001 OR Floor(Cosh(Float("p"."MoneyValue") / 15) * 15) IS NULL)

