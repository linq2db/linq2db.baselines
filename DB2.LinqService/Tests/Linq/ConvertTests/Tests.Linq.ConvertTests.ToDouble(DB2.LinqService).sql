BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor(CAST("p"."MoneyValue" AS Float)) AS Int) > 0

