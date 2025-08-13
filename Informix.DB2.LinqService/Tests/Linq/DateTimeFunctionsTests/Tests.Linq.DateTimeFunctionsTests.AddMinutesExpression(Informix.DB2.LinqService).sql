BeforeExecute
-- Informix.DB2 Informix

SELECT
	(t.DateTimeValue + Interval (-8) Minute to Minute)::datetime Minute to Minute::Char(3)::Int
FROM
	LinqDataTypes t

