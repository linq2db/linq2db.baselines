-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue + Interval (1) Hour to Hour)::datetime Hour to Hour::Char(3)::Int
FROM
	LinqDataTypes t

