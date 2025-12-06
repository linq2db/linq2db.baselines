-- Informix.DB2 Informix

SELECT
	To_Date(LPad(Year(p.DateTimeValue), 4, '0') || '-10-01 20:35:44', '%Y-%m-%d %H:%M:%S')
FROM
	LinqDataTypes p

