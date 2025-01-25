BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			Floor(p."MoneyValue"::Float)::Int as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > 0

