-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	TRUNC(TO_TIMESTAMP(To_Char(d."DateTimeValue", 'YYYY-MM-DD HH24:MI:SS'), 'YYYY-MM-DD HH24:MI:SS'))
FROM
	"LinqDataTypes" d
WHERE
	EXTRACT(DAY FROM TO_TIMESTAMP(To_Char(d."DateTimeValue", 'YYYY-MM-DD HH24:MI:SS'), 'YYYY-MM-DD HH24:MI:SS')) > 0

