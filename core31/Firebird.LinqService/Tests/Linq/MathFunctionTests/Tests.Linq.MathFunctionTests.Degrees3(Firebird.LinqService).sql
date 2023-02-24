BeforeExecute
-- Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(Cast(Floor("p"."MoneyValue") as Int) as Float) * 57.295779513082323 as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	(Cast("t"."c1" as Float) <> 0.10000000000000001 OR Cast("t"."c1" as Float) IS NULL)

