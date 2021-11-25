BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Degrees(Int("p"."MoneyValue"))
FROM
	"LinqDataTypes" "p"
WHERE
	(Float(Degrees(Int("p"."MoneyValue"))) <> 0.10000000000000001 OR Float(Degrees(Int("p"."MoneyValue"))) IS NULL)

