BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.c1
FROM
	( 
		SELECT 
			To_Date('2010-' || To_Char(p.ID) || '-1 20:35:44') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Year(t.c1) = 2010

