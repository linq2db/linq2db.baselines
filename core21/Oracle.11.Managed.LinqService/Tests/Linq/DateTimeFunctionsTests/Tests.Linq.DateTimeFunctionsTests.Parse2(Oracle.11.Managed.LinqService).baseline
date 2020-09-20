BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	d.c1
FROM
	(
		SELECT
			TO_TIMESTAMP(Cast(To_Number(To_Char(t.DateTimeValue, 'YYYY')) as VarChar(11)) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS') as c1
		FROM
			LinqDataTypes t
	) d
WHERE
	To_Number(To_Char(d.c1, 'DD')) > 0

