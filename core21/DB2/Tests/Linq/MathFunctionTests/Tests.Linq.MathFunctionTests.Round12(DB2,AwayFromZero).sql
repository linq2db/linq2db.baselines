BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Round("t"."MoneyValue", 1)
FROM
	"LinqDataTypes" "t"
WHERE
	Round("t"."MoneyValue", 1) <> 0 AND Round("t"."MoneyValue", 1) <> 7

