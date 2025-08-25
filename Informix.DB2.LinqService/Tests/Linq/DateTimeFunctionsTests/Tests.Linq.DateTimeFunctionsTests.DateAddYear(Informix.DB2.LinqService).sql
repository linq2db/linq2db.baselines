BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Extend(t.DateTimeValue + Interval (11) Year to Year, Year to Day)
FROM
	LinqDataTypes t

