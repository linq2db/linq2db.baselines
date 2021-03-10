BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Power(Cast(p."MoneyValue" as Float), 3))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Power(Cast(p."MoneyValue" as Float), 3)) <> 0 OR Floor(Power(Cast(p."MoneyValue" as Float), 3)) IS NULL)

