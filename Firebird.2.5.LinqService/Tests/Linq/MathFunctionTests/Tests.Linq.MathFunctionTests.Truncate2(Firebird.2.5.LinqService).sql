BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Trunc(CAST(-"p"."MoneyValue" AS Float), 0) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

