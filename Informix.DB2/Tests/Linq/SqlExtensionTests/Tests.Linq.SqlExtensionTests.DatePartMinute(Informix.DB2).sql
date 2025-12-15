-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue::datetime Minute to Minute)::char(3)::int
FROM
	LinqDataTypes t

