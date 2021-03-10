BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Log(Float("p"."MoneyValue")) / 0.69314718055994529)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Log(Float("p"."MoneyValue")) / 0.69314718055994529) <> 0.10000000000000001 OR Floor(Log(Float("p"."MoneyValue")) / 0.69314718055994529) IS NULL)

