BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Cast(p."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Cast(p."MoneyValue" as Float)) as Int) > 0

