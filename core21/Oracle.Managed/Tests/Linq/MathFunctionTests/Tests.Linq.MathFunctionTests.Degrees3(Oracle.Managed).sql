BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Cast(Cast(Floor(p."MoneyValue") as Int) as Float) * 57.295779513082323D
FROM
	"LinqDataTypes" p
WHERE
	(Cast((Cast(Cast(Floor(p."MoneyValue") as Int) as Float) * 57.295779513082323D) as Float) <> 0.10000000000000001D OR Cast((Cast(Cast(Floor(p."MoneyValue") as Int) as Float) * 57.295779513082323D) as Float) IS NULL)

