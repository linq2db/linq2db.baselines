-- Informix.DB2 Informix

SELECT
	To_Date(Year(d.DateTimeValue) || '-02-24 00:00:00', '%Y-%m-%d %H:%M:%S')
FROM
	LinqDataTypes d
WHERE
	Day(To_Date(Year(d.DateTimeValue) || '-02-24 00:00:00', '%Y-%m-%d %H:%M:%S')) > 0

