BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Floor(Log(2, p."MoneyValue"))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Log(2, p."MoneyValue")) <> 0.10000000000000001 OR Floor(Log(2, p."MoneyValue")) IS NULL)

