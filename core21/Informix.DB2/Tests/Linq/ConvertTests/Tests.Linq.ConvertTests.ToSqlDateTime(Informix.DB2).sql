BeforeExecute
-- Informix.DB2 Informix

SELECT 
	To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01 00:20:00')
FROM
	LinqDataTypes t

