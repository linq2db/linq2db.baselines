-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MOD(EXTRACT(DAY FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

