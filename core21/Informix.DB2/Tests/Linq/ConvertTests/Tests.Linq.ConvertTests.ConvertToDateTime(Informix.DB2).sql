BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01 00:00:00')
FROM
	LinqDataTypes t
WHERE
	Day(To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01 00:00:00')) > 0

