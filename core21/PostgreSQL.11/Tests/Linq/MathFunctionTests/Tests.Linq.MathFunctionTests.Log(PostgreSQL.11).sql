BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Ln(Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Ln(Cast(p."MoneyValue" as Float))) <> 0.10000000000000001 OR Floor(Ln(Cast(p."MoneyValue" as Float))) IS NULL)

