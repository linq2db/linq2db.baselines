BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date('2010-' || To_Char(p.ID) || '-1 20:35:44')
FROM
	LinqDataTypes p
WHERE
	Year(To_Date('2010-' || To_Char(p.ID) || '-1 20:35:44')) = 2010

