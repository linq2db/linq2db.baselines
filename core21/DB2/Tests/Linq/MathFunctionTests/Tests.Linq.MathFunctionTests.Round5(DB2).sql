BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Round("t"."MoneyValue", 0)
FROM
	"LinqDataTypes" "t"
WHERE
	Round("t"."MoneyValue", 0) <> 0

