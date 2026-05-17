-- Informix.DB2 Informix

SELECT
	Mod(t.DateTimeValue::datetime Second to Second::Char(3)::Int, 7)
FROM
	LinqDataTypes t

