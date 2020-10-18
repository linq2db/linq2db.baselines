BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Degrees(p."MoneyValue")) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	(t.c1 <> 0.1 OR t.c1 IS NULL)

