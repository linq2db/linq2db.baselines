BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(p_1.c1)::Int
FROM
	(
		SELECT
			p."MoneyValue"::Real as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > 0

