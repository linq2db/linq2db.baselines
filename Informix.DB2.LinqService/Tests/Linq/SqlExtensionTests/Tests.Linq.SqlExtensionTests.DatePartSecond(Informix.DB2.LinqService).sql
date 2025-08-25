BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(t.DateTimeValue::datetime Second to Second)::char(3)::int
FROM
	LinqDataTypes t

