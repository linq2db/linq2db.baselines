-- Informix.DB2 Informix

SELECT
	Extend(t.DateTimeValue + Interval (1) Year to Year, Year to Day)
FROM
	LinqDataTypes t

