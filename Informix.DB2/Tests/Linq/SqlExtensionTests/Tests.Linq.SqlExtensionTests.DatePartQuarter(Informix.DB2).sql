-- Informix.DB2 Informix

SELECT
	((Month(t.DateTimeValue) - 1) / 3 + 1)
FROM
	LinqDataTypes t

