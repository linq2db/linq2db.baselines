BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" - 4.5 = 0
					THEN False
				ELSE True
			END as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	NOT (p.c1 IS NOT NULL AND p.c1 = True)

