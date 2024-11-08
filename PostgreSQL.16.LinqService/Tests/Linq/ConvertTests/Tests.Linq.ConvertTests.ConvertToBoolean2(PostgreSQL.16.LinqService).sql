BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" <> 4.5 THEN True
				ELSE False
			END as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	NOT p.c1

