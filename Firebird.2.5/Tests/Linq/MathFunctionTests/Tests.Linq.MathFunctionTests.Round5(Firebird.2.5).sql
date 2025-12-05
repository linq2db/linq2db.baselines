-- Firebird.2.5 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			ROUND("p"."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

