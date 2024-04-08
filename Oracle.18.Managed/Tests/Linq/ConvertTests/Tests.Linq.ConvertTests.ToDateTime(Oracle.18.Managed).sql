BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(EXTRACT(YEAR FROM p."DateTimeValue") || '-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" p
WHERE
	EXTRACT(DAY FROM TO_TIMESTAMP(EXTRACT(YEAR FROM p."DateTimeValue") || '-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')) > 0

