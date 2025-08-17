BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'Q'))
FROM
	"Transactions" t

