BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.c1
FROM
	( 
		SELECT 
			To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01 00:00:00') as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	Day(p.c1) > 0

