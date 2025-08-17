BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'DDD')), 7)
FROM
	"LinqDataTypes" t

