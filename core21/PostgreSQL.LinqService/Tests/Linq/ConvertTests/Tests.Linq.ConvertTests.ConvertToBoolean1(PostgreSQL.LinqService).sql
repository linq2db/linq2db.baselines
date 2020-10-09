BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	p.c1
FROM
	( 
		SELECT 
			CASE
				WHEN t."MoneyValue" = 0 THEN False
				ELSE True
			END as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	(p.c1 = True AND p.c1 IS NOT NULL)

