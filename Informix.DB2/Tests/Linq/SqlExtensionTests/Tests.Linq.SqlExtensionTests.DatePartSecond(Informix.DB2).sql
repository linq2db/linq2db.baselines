-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue::datetime Second to Second)::char(3)::int
FROM
	LinqDataTypes t

