BeforeExecute
-- Informix.DB2 Informix

SELECT
	d.c1
FROM
	(
		SELECT
			t.DateTimeValue as c1
		FROM
			LinqDataTypes t
	) d
WHERE
	Day(d.c1) > 0

