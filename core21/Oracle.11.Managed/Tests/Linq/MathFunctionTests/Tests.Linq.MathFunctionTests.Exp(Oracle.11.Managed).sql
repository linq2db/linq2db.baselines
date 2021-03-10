BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Floor(Exp(Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Exp(Cast(p."MoneyValue" as Float))) <> 0.10000000000000001D OR Floor(Exp(Cast(p."MoneyValue" as Float))) IS NULL)

