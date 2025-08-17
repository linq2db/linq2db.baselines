BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mod(Month(t.DateTimeValue), 7)
FROM
	LinqDataTypes t

