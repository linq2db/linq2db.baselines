BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Degrees(Int("p"."MoneyValue")) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	(Float("t"."c1") <> 0.10000000000000001 OR Float("t"."c1") IS NULL)

