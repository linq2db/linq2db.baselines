BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Sign(t."MoneyValue") as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0

