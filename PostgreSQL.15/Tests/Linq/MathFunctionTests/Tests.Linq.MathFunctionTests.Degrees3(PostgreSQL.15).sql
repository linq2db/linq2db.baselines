BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Degrees(Floor(t."MoneyValue")::Int) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1::Float <> 0.10000000000000001

