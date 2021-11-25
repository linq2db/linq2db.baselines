BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Floor(Degrees("p"."MoneyValue"))
FROM
	"LinqDataTypes" "p"
WHERE
	Floor(Degrees("p"."MoneyValue")) <> 0.1

