BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	Day(t.DateTimeValue) > 0

