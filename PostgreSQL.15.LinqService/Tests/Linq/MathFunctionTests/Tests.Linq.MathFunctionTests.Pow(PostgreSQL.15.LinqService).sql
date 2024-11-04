BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Power(p."MoneyValue"::Float, 3)) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

