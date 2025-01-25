BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CAST(Floor(CAST("p"."MoneyValue" AS Float)) AS Int) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" > 0

