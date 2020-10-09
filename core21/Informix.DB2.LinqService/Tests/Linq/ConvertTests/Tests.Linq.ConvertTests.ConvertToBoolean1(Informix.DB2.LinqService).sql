BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.c1
FROM
	( 
		SELECT 
			CASE
				WHEN t.MoneyValue = 0 THEN 'f'
				ELSE 't'
			END as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	(p.c1 = 't' AND p.c1 IS NOT NULL)

