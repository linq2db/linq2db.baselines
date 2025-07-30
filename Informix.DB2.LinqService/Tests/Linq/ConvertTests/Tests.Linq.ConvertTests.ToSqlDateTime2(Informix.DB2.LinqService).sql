BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date(Year(t.DateTimeValue) || '-01-01 00:20:00', '%Y-%m-%d %H:%M:%S')
FROM
	LinqDataTypes t

