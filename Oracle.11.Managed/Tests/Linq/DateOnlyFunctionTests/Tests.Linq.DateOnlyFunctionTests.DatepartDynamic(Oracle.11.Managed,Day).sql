-- Oracle.11.Managed Oracle11

SELECT
	EXTRACT(DAY FROM t."TransactionDate")
FROM
	"Transactions" t

