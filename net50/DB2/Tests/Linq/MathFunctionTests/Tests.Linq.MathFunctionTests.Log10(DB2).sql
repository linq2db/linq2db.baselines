BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Log10(Float("p"."MoneyValue")))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Log10(Float("p"."MoneyValue"))) <> 0.10000000000000001 OR Floor(Log10(Float("p"."MoneyValue"))) IS NULL)

