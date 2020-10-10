BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(t."MoneyValue" as Decimal(29,10)) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

