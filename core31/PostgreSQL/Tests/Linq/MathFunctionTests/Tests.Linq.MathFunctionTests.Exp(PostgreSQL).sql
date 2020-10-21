BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Exp(Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Exp(Cast(p."MoneyValue" as Float))) <> 0.10000000000000001 OR Floor(Exp(Cast(p."MoneyValue" as Float))) IS NULL)

