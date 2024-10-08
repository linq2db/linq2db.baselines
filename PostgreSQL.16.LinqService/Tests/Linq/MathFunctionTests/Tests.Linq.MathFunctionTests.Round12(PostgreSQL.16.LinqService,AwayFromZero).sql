BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t_1."MoneyValue"
FROM
	(
		SELECT
			ROUND(t."MoneyValue", 1) as c1,
			t."MoneyValue"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0 AND t_1.c1 <> 7

