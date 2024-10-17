BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Power(p."MoneyValue"::Float, 3::Float)::decimal) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

