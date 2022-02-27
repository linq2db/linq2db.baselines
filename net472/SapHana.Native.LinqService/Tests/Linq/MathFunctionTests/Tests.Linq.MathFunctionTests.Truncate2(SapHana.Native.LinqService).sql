BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Round(Cast((-"p"."MoneyValue") as Double), 0, ROUND_DOWN) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	("t"."c1" IS NULL OR "t"."c1" <> 0.10000000000000001)

