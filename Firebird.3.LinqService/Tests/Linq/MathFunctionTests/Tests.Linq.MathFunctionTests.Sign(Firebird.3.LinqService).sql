BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Sign("p"."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

