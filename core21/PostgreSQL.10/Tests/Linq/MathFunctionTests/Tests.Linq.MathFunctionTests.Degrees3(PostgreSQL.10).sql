BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Degrees(Cast(Floor(p."MoneyValue") as Int))
FROM
	"LinqDataTypes" p
WHERE
	(Cast(Degrees(Cast(Floor(p."MoneyValue") as Int)) as Float) <> 0.10000000000000001 OR Cast(Degrees(Cast(Floor(p."MoneyValue") as Int)) as Float) IS NULL)

