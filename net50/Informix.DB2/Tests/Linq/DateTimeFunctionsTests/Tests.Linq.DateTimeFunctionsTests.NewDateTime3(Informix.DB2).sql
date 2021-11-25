BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date(To_Char(Year(p.DateTimeValue)) || '-10-1 20:35:44')
FROM
	LinqDataTypes p
WHERE
	Month(To_Date(To_Char(Year(p.DateTimeValue)) || '-10-1 20:35:44')) = 10

