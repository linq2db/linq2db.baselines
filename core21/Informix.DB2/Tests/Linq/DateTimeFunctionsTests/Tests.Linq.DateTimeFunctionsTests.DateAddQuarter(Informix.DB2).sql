BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.DateTimeValue + Interval(-1) Month to Month * 3
FROM
	LinqDataTypes t

