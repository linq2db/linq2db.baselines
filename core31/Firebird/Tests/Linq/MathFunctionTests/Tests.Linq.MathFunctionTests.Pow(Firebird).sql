BeforeExecute
-- Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Power(Cast("p"."MoneyValue" as Float), 3)) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	("t"."c1" <> 0 OR "t"."c1" IS NULL)

