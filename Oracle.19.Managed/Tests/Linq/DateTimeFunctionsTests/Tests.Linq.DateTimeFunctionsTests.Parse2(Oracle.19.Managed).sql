-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(CAST(EXTRACT(YEAR FROM d."DateTimeValue") AS VarChar(11)) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" d
WHERE
	EXTRACT(DAY FROM TO_TIMESTAMP(CAST(EXTRACT(YEAR FROM d."DateTimeValue") AS VarChar(11)) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')) > 0

