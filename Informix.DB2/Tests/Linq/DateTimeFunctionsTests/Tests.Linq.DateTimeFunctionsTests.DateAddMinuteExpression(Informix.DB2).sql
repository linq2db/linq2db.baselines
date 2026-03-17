-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue + Interval (5) Minute to Minute)::datetime Minute to Minute::Char(3)::Int
FROM
	LinqDataTypes t

