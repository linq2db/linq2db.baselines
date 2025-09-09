BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Extend(t.DateTimeValue + Interval (5) Day to Day, Year to Day)
FROM
	LinqDataTypes t

