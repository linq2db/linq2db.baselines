BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			To_Date(CASE
				WHEN Year(p.DateTimeValue) IS NULL
					THEN ''
				ELSE To_Char(Year(p.DateTimeValue))
			END || '-10-1 20:35:44') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	Month(t.c1) = 10

