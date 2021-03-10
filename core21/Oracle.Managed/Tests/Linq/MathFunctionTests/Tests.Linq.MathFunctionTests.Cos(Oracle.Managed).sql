BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Floor(Cos(Cast(p."MoneyValue" as Float) / 15D) * 15D)
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Cos(Cast(p."MoneyValue" as Float) / 15D) * 15D) <> 0.10000000000000001D OR Floor(Cos(Cast(p."MoneyValue" as Float) / 15D) * 15D) IS NULL)

