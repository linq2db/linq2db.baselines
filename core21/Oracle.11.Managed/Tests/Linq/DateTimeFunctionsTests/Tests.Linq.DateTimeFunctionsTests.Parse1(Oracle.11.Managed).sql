BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
	To_Number(To_Char(d.c1, 'DD')) > 0

