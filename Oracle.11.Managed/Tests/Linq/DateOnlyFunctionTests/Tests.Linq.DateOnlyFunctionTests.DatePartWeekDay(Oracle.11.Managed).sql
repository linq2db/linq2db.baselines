-- Oracle.11.Managed Oracle11

SELECT
	MOD(TRUNC(t."TransactionDate") - TRUNC(t."TransactionDate", 'IW') + 1, 7) + 1
FROM
	"Transactions" t

