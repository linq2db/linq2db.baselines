BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TO_NUMBER(TO_CHAR(t."DateTimeValue", 'FF')) / 1000
FROM
	"LinqDataTypes" t

