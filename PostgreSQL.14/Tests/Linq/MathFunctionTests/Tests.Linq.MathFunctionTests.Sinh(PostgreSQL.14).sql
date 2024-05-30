BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(((Exp(t."MoneyValue"::Float / 15) - Exp(-(t."MoneyValue"::Float / 15))) / 2) * 15) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0.10000000000000001

