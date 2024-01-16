BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((Lpad(Year(p.DateTimeValue),4,'0') || '-10-01') as Date) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Month(t.c1) = 10

