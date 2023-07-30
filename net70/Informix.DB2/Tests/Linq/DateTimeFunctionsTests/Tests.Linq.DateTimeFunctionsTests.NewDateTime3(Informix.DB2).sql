BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			To_Date(Lpad(Year(p.DateTimeValue),4,'0') || '-10-01 20:35:44', '%Y-%m-%d %H:%M:%S') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Month(t.c1) = 10

