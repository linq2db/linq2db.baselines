BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'DDD'))
FROM
	"Transactions" t

