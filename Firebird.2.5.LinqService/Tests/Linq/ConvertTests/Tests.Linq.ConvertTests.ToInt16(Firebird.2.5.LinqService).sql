BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CAST(Floor("p"."MoneyValue") AS SmallInt) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" > 0

