BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Degrees(p."MoneyValue"))
FROM
	"LinqDataTypes" p
WHERE
	Floor(Degrees(p."MoneyValue")) <> 0.1

