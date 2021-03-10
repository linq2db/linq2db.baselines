BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mdy(p.ID, 1, 2010)
FROM
	LinqDataTypes p
WHERE
	Year(Mdy(p.ID, 1, 2010)) = 2010

