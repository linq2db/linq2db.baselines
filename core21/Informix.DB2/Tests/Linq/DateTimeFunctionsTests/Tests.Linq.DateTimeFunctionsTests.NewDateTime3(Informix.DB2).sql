BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date(To_Char(Year(t.DateTimeValue)) || '-10-1 20:35:44')
FROM
	LinqDataTypes t
WHERE
	Month(To_Date(To_Char(Year(t.DateTimeValue)) || '-10-1 20:35:44')) = 10

