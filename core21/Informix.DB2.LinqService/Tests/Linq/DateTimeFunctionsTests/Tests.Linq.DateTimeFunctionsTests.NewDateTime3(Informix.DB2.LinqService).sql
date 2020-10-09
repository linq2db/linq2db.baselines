BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.c1
FROM
	( 
		SELECT 
			To_Date(To_Char(Year(p.DateTimeValue)) || '-10-1 20:35:44') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Month(t.c1) = 10

