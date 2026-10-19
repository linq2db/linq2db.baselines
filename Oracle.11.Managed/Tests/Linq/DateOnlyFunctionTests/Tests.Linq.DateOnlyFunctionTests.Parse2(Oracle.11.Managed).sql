-- Oracle.11.Managed Oracle11
SELECT
	TO_DATE(To_Char(d."TransactionDate", 'YYYY-MM-DD'), 'YYYY-MM-DD')
FROM
	"Transactions" d
WHERE
	EXTRACT(DAY FROM TO_DATE(To_Char(d."TransactionDate", 'YYYY-MM-DD'), 'YYYY-MM-DD')) > 0

