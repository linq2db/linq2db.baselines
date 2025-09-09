BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'DDD'))
FROM
	"Transactions" t

