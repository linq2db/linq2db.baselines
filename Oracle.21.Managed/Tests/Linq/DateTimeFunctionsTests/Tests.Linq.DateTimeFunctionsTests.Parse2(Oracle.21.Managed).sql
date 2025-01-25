BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(EXTRACT(YEAR FROM d."DateTimeValue") || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" d
WHERE
	EXTRACT(DAY FROM TO_TIMESTAMP(EXTRACT(YEAR FROM d."DateTimeValue") || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')) > 0

