-- Informix.DB2 Informix

SELECT
	Mod(Mdy(Month(t.DateTimeValue), Day(t.DateTimeValue), Year(t.DateTimeValue)) - Mdy(1, 1, Year(t.DateTimeValue)) + 1, 7)
FROM
	LinqDataTypes t

