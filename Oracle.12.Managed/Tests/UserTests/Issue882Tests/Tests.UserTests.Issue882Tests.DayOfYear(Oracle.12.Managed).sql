-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'DDD')), 7)
FROM
	"LinqDataTypes" t

