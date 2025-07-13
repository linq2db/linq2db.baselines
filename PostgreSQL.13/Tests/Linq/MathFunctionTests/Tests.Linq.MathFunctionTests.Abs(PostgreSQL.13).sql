BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Abs(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 > 0

