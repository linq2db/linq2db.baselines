BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.MoneyValue
FROM
	( 
		SELECT 
			CASE
				WHEN t.BoolValue = 'f' THEN 't'
				ELSE 'f'
			END as b, 
			t.MoneyValue
		FROM
			LinqDataTypes t
	) p
WHERE
	(p.b = 'f' AND p.b IS NOT NULL)

