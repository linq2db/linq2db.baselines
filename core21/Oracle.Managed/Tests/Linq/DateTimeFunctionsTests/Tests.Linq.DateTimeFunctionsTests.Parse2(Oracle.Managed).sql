BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(Cast(To_Number(To_Char(d.DateTimeValue, 'YYYY')) as VarChar(11)) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	LinqDataTypes d
WHERE
	To_Number(To_Char(TO_TIMESTAMP(Cast(To_Number(To_Char(d.DateTimeValue, 'YYYY')) as VarChar(11)) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'DD')) > 0

