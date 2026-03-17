-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'WW'))
FROM
	"Transactions" t

