-- Informix.DB2 Informix

SELECT
	Mdy(Month(t.DateTimeValue), Day(t.DateTimeValue), Year(t.DateTimeValue)) - Mdy(1, 1, Year(t.DateTimeValue)) + 1
FROM
	LinqDataTypes t

