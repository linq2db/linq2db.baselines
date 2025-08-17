BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(Month(t.DateTimeValue) - 1) / 3 + 1
FROM
	LinqDataTypes t

