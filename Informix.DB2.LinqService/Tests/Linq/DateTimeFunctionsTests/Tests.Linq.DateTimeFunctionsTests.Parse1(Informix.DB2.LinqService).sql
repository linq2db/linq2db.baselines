BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Extend(d.DateTimeValue, Year to Day)
FROM
	LinqDataTypes d
WHERE
	Day(d.DateTimeValue) > 0

