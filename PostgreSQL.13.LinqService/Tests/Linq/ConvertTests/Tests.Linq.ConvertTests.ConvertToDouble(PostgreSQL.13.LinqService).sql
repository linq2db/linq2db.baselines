BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(p.c1)::Int
FROM
	(
		SELECT
			t."MoneyValue"::Float as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

