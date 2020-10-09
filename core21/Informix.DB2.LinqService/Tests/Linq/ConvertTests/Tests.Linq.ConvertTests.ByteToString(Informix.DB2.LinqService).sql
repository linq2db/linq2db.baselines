BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.c1
FROM
	( 
		SELECT 
			To_Char(Cast(t.ID as SmallInt)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	Length(p.c1) > 0

