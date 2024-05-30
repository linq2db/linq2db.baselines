BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Round(t."MoneyValue", 1) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0 AND t_1.c1 <> 7

