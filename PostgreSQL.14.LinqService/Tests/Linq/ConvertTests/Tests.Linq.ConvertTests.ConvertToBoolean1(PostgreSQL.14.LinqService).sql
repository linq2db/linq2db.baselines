BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" <> 0 THEN True
				ELSE False
			END as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 = True

