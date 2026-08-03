-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'FF3')), 7)
FROM
	"LinqDataTypes" t

