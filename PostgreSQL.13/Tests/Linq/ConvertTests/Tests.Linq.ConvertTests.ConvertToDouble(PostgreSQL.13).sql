-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
	p.c1 > 0

