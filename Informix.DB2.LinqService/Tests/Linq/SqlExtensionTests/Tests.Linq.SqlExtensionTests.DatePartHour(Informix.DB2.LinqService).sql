BeforeExecute
-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue::datetime Hour to Hour)::char(3)::int
FROM
	LinqDataTypes t

