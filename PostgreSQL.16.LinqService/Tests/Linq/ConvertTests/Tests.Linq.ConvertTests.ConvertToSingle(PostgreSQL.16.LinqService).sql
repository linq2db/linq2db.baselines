BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Floor(p.c1)::Int
FROM
	(
		SELECT
			t."MoneyValue"::Real as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

