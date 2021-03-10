BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Floor(Degrees(p."MoneyValue"))
FROM
	"LinqDataTypes" p
WHERE
	Floor(Degrees(p."MoneyValue")) <> 0.1

