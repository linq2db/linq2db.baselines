BeforeExecute
-- Informix.DB2 Informix

SELECT
	Date(To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01', '%Y-%m-%d'))
FROM
	LinqDataTypes t

