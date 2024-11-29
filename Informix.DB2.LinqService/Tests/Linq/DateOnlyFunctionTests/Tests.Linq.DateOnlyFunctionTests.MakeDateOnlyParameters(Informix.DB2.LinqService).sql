BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Mdy(p.ID, 1, 2010) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Year(t.c1) = 2010

