BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Mod(t.DateTimeValue::datetime Second to Second::Char(3)::Int, 7)
FROM
	LinqDataTypes t

