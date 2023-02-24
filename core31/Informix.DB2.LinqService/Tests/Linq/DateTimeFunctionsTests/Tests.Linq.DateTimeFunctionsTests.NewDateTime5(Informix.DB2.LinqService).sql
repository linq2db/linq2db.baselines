BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mdy(10, 1, Year(p.DateTimeValue) + 1)
FROM
	LinqDataTypes p
WHERE
	Month(Mdy(10, 1, Year(p.DateTimeValue) + 1)) = 10

