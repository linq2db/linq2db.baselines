BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Degrees(Cast(Floor(t."MoneyValue") as Int)) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	Cast(t_1.c1 as Float) <> 0.10000000000000001

