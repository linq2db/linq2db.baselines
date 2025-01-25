BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			Round(CAST("t"."MoneyValue" AS Float), 0) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

