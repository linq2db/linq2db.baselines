BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Ceiling(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

