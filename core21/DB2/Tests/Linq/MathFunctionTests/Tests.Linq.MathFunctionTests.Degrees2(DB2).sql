BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Degrees(Float("p"."MoneyValue"))
FROM
	"LinqDataTypes" "p"
WHERE
	(Degrees(Float("p"."MoneyValue")) <> 0.10000000000000001 OR Degrees(Float("p"."MoneyValue")) IS NULL)

