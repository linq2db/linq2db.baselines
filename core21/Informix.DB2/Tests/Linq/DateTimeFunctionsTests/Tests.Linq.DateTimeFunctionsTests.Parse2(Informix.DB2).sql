BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date(To_Char(Year(t.DateTimeValue)) || '-02-24 00:00:00')
FROM
	LinqDataTypes t
WHERE
	Day(To_Date(To_Char(Year(t.DateTimeValue)) || '-02-24 00:00:00')) > 0

