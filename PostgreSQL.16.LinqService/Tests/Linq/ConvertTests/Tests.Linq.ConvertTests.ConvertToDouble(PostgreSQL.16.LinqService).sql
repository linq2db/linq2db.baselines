BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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

