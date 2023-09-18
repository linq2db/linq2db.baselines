BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Ceiling(-(p."MoneyValue" + 1)) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

