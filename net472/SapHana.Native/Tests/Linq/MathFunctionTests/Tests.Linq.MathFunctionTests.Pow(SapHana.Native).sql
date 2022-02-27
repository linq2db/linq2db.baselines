BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Power(Cast("p"."MoneyValue" as Double), 3)) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

