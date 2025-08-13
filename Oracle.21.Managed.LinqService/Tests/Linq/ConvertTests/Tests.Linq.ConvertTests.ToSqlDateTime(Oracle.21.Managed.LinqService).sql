BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(EXTRACT(YEAR FROM t."DateTimeValue") || '-01-01 00:20:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" t

