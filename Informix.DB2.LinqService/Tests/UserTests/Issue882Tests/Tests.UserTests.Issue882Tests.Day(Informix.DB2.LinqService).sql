BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mod(Day(t.DateTimeValue), 7)
FROM
	LinqDataTypes t

