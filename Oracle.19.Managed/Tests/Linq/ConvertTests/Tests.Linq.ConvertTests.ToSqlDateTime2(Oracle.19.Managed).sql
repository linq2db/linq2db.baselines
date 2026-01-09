-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(11)) || '-01-01 00:20:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" t

