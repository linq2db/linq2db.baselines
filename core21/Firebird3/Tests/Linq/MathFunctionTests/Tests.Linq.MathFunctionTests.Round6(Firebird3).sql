BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Round(Cast("p"."MoneyValue" as Float), 0) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	("t"."c1" <> 0 OR "t"."c1" IS NULL)

