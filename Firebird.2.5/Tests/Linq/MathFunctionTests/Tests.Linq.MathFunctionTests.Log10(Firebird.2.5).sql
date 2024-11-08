BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Log10(CAST("p"."MoneyValue" AS Float))) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

