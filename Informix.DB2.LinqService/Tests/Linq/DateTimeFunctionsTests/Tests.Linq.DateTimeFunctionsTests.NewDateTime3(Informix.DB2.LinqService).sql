BeforeExecute
-- Informix.DB2 Informix

SELECT
	Year(t.DateTimeValue)
FROM
	LinqDataTypes t
WHERE
	Month(To_Date(LPad(Year(t.DateTimeValue), 4, '0') || '-10-01 20:35:44', '%Y-%m-%d %H:%M:%S')) = 10

