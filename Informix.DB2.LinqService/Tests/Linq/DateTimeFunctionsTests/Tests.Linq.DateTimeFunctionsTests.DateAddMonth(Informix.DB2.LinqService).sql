BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Extend(t.DateTimeValue + Interval (2) Month to Month, Year to Day)
FROM
	LinqDataTypes t

