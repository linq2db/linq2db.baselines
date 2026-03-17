-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MOD(TRUNC(t."DateTimeValue") - TRUNC(t."DateTimeValue", 'IW') + 1, 7) + 1
FROM
	"LinqDataTypes" t

