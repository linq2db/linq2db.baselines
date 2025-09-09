BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			t."MoneyValue"::Real as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

