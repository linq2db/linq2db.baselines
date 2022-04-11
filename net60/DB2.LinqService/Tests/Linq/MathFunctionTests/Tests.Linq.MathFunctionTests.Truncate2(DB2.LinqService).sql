BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Truncate(Float(-"p"."MoneyValue"), 0)
FROM
	"LinqDataTypes" "p"
WHERE
	(Truncate(Float(-"p"."MoneyValue"), 0) <> 0.10000000000000001 OR Truncate(Float(-"p"."MoneyValue"), 0) IS NULL)

