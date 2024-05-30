BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Abs(t."MoneyValue") as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 > 0

