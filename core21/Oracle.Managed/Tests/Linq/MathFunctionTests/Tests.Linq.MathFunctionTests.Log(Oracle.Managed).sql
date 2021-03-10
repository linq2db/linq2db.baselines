BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Floor(Ln(Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Ln(Cast(p."MoneyValue" as Float))) <> 0.10000000000000001D OR Floor(Ln(Cast(p."MoneyValue" as Float))) IS NULL)

