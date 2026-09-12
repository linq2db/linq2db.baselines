-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(Add_Months(t."TransactionDate", 2) - GreatEst(EXTRACT(DAY FROM Add_Months(t."TransactionDate", 2)) - EXTRACT(DAY FROM t."TransactionDate"), 0) AS date) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."TransactionDate" AS timestamp)), 1), 'SECOND')
FROM
	"Transactions" t

