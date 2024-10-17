BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Trunc((-p."MoneyValue"), 0)::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

