BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MOD(TRUNC(t."TransactionDate") - TRUNC(t."TransactionDate", 'IW') + 1, 7) + 1
FROM
	"Transactions" t

