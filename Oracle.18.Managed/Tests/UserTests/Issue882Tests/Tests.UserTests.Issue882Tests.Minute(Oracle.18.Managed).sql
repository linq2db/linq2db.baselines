-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MOD(EXTRACT(MINUTE FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

