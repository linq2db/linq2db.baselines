BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MOD(TRUNC(t."TransactionDate") - TRUNC(t."TransactionDate", 'IW') + 1, 7) + 1
FROM
	"Transactions" t

