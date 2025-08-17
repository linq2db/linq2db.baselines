BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CAST("t"."MoneyValue" <> 4.5 AS smallint) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	NOT "p"."c1"

