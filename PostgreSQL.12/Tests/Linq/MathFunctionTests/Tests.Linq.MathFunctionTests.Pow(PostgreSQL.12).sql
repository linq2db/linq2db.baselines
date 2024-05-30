BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Power(t."MoneyValue"::Float, 3)) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0

