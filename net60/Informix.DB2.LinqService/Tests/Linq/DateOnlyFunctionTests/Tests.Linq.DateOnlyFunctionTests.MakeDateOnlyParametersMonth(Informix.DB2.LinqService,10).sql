BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast((Lpad((2010 + t.ID),4,'0') || '-10-01') as Date)
FROM
	LinqDataTypes t

