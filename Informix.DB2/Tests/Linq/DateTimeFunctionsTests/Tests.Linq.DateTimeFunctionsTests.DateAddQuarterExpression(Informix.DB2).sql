-- Informix.DB2 Informix

SELECT
	Extend(t.DateTimeValue + Interval (-1) Month to Month * 3, Year to Day)
FROM
	LinqDataTypes t

