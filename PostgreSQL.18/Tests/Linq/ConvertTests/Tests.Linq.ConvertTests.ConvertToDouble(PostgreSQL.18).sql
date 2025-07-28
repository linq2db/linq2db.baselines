BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			t."MoneyValue"::Float as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0::float8

