BeforeExecute
-- Informix.DB2 Informix

SELECT
	((t.DateTimeValue + Interval(22) Hour to Hour)::datetime Hour to Hour)::char(3)::int
FROM
	LinqDataTypes t

