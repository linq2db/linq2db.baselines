-- Informix.DB2 Informix

SELECT
	Extend(t.DateTimeValue + Interval (-2) Month to Month, Year to Day)
FROM
	LinqDataTypes t

