BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MOD(TO_NUMBER(TO_CHAR(t."DateTimeValue", 'DDD')), 7)
FROM
	"LinqDataTypes" t

