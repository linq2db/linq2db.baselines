BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mdy(10, 1, Year(t.DateTimeValue) + 1)
FROM
	LinqDataTypes t

