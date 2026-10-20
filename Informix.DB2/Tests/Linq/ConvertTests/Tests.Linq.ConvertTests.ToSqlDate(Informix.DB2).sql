-- Informix.DB2 Informix
SELECT
	Extend(To_Date(To_Char(Year(t.DateTimeValue)) || '-01-01', '%Y-%m-%d'), Year to Day)
FROM
	LinqDataTypes t

