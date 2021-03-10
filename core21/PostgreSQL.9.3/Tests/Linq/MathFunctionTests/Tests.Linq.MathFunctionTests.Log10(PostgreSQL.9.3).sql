BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Floor(Log(Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Log(Cast(p."MoneyValue" as Float))) <> 0.10000000000000001 OR Floor(Log(Cast(p."MoneyValue" as Float))) IS NULL)

