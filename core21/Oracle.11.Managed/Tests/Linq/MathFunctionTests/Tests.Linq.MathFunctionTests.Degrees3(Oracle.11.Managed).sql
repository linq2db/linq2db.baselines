BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Cast(Floor(t."MoneyValue") as Int) as Float) * 57.295779513082323D
FROM
	"LinqDataTypes" t
WHERE
	(Cast((Cast(Cast(Floor(t."MoneyValue") as Int) as Float) * 57.295779513082323D) as Float) <> 0.10000000000000001D OR Cast((Cast(Cast(Floor(t."MoneyValue") as Int) as Float) * 57.295779513082323D) as Float) IS NULL)

