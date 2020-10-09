BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.c1
FROM
	( 
		SELECT 
			Cast(t.MoneyValue as Float) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0

