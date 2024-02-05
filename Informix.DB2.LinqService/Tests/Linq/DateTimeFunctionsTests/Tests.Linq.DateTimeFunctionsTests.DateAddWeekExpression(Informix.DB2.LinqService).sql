BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.DateTimeValue + Interval(-1) Day to Day * 7
FROM
	LinqDataTypes t

