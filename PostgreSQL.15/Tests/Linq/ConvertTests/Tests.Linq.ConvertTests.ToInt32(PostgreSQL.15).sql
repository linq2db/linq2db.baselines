BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Floor(t."MoneyValue")::Int as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

