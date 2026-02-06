-- Oracle.11.Managed Oracle11

SELECT
	TO_DATE(CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(255)) || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

