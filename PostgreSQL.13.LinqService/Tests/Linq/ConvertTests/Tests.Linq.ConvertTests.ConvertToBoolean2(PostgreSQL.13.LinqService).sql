BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			t."MoneyValue" <> 4.5::decimal(2, 1) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	NOT p.c1

