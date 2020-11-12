BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Cast(p."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Cast(p."MoneyValue" as Float)) as Int) > 0

