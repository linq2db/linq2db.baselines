BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mod((t.DateTimeValue::datetime Minute to Minute)::char(3)::int, 7)
FROM
	LinqDataTypes t

