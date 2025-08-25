BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	To_Date(Year(t.DateTimeValue) || '-01-01 00:20:00')
FROM
	LinqDataTypes t

