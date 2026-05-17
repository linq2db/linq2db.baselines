-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MOD(TRUNC(t."TransactionDate") - TRUNC(t."TransactionDate", 'IW') + 1, 7) + 1
FROM
	"Transactions" t

