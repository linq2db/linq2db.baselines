BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mdy(t.ID, 1, 2010)
FROM
	LinqDataTypes t
WHERE
	Year(Mdy(t.ID, 1, 2010)) = 2010

