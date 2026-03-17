-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue + Interval (-35) Second to Second)::datetime Second to Second::Char(3)::Int
FROM
	LinqDataTypes t

