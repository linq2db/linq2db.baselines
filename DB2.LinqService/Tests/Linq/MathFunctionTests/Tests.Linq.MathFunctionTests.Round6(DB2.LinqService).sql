BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND(CAST("t"."MoneyValue" AS Float)) <> 0

