BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
	(p.c1 = False OR p.c1 IS NULL)

