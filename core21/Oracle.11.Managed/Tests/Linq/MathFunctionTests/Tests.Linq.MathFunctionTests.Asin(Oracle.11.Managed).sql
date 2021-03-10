BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Floor(Asin(Cast(p."MoneyValue" as Float) / 15D) * 15D)
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Asin(Cast(p."MoneyValue" as Float) / 15D) * 15D) <> 0.10000000000000001D OR Floor(Asin(Cast(p."MoneyValue" as Float) / 15D) * 15D) IS NULL)

