BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(p."DateTimeValue", 'YYYY')) || '-01-01 00:00:00'
FROM
	"LinqDataTypes" p
WHERE
	To_Number(To_Char(TO_TIMESTAMP(To_Number(To_Char(p."DateTimeValue", 'YYYY')) || '-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'DD')) > 0

