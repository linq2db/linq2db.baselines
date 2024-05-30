BeforeExecute
-- Informix.DB2 Informix

SELECT
	Year(t.DateTimeValue)
FROM
	LinqDataTypes t
WHERE
	Month(Mdy(10, 1, Year(t.DateTimeValue))) = 10

