BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Mdy(10, 1, Year(p.DateTimeValue) + 1) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Month(t.c1) = 10

