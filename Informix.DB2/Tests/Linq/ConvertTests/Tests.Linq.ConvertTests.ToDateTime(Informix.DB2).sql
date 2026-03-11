-- Informix.DB2 Informix

SELECT
	To_Date(To_Char(Year(p.DateTimeValue)) || '-01-01 00:00:00', '%Y-%m-%d %H:%M:%S')
FROM
	LinqDataTypes p
WHERE
	Day(To_Date(To_Char(Year(p.DateTimeValue)) || '-01-01 00:00:00', '%Y-%m-%d %H:%M:%S')) > 0

