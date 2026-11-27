-- Oracle.11.Managed Oracle11
SELECT
	CAST(Add_Months(t."TransactionDate", 144) - GreatEst(EXTRACT(DAY FROM Add_Months(t."TransactionDate", 144)) - EXTRACT(DAY FROM t."TransactionDate"), 0) AS date)
FROM
	"Transactions" t

