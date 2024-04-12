BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mod(t.DateTimeValue::datetime Minute to Minute::Char(3)::Int, 7)
FROM
	LinqDataTypes t

