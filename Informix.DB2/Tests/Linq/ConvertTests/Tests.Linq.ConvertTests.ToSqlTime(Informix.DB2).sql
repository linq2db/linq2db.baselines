-- Informix.DB2 Informix

SELECT
	Extend((t.DateTimeValue::datetime Hour to Hour::Char(3)::Int || ':01:01'), Hour to Second)::Char(8)
FROM
	LinqDataTypes t

