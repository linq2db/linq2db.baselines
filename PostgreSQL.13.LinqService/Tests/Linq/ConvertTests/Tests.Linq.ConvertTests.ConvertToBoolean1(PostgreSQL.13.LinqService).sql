BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			t."MoneyValue" <> 0 as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 = True

