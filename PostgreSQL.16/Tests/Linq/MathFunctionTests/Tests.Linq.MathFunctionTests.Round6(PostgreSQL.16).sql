BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Cast(Round(t."MoneyValue", 0) as Float) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0

