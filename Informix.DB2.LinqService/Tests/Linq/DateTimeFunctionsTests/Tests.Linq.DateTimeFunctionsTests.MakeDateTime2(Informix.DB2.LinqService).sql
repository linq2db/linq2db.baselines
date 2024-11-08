BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			To_Date('2010-' || LPad(p.ID, 2, '0') || '-01 20:35:44', '%Y-%m-%d %H:%M:%S') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Year(t.c1) = 2010

