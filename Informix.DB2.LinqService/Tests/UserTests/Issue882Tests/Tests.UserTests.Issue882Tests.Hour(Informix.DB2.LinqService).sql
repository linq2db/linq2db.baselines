BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mod(t.DateTimeValue::datetime Hour to Hour::Char(3)::Int, 7)
FROM
	LinqDataTypes t

