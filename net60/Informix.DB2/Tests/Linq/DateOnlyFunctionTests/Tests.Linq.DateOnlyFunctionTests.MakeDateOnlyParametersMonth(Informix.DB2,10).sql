BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast((To_Char(2010 + t.ID) || '-10-01') as Date)
FROM
	LinqDataTypes t

