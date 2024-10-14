BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Floor(t."MoneyValue"::Float)::Int as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

