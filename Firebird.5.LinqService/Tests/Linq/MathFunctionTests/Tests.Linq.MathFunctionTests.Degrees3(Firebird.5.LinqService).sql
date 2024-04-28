BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CAST(CAST(Floor("t"."MoneyValue") AS Int) AS Float) * 57.295779513082323 as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	CAST("t_1"."c1" AS Float) <> 0.10000000000000001

