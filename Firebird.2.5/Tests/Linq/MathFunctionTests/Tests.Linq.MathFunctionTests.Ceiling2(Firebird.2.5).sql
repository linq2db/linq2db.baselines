BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			Ceiling("t"."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

