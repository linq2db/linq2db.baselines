BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mod(t.DateTimeValue::datetime Minute to Minute::Char(3)::Int, 7)
FROM
	LinqDataTypes t

