-- Informix.DB2 Informix

SELECT
	Extend(t.DateTimeValue + Interval (-1) Day to Day * 7, Year to Day)
FROM
	LinqDataTypes t

