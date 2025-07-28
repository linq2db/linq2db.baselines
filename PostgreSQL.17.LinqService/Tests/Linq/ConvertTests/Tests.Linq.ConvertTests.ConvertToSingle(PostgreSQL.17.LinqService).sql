BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
	p.c1 > 0::float4

