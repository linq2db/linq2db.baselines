BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(t.DateTimeValue::datetime Hour to Hour)::char(3)::int
FROM
	LinqDataTypes t

