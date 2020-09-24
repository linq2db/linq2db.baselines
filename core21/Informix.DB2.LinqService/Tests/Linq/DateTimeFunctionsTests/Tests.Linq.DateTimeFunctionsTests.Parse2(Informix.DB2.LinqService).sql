BeforeExecute
-- Informix.DB2 Informix

SELECT
	d.c1
FROM
	(
		SELECT
			To_Date(To_Char(Year(t.DateTimeValue)) || '-02-24 00:00:00') as c1
		FROM
			LinqDataTypes t
	) d
WHERE
	Day(d.c1) > 0

