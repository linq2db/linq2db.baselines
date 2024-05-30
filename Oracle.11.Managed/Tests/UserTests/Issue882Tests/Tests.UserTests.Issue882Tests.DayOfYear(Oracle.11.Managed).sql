BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'DDD')), 7)
FROM
	"LinqDataTypes" t

