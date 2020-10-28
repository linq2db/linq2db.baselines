BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Cast(Floor("p"."MoneyValue") as Int) as Float) * 57.295779513082323
FROM
	"LinqDataTypes" "p"
WHERE
	(Cast((Cast(Cast(Floor("p"."MoneyValue") as Int) as Float) * 57.295779513082323) as Float) <> 0.10000000000000001 OR Cast((Cast(Cast(Floor("p"."MoneyValue") as Int) as Float) * 57.295779513082323) as Float) IS NULL)

