-- Oracle.11.Managed Oracle11
SELECT
	CAST(Add_Months(t."TransactionDate", -3) - GreatEst(EXTRACT(DAY FROM Add_Months(t."TransactionDate", -3)) - EXTRACT(DAY FROM t."TransactionDate"), 0) AS date) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."TransactionDate" AS timestamp)), 1), 'SECOND')
FROM
	"Transactions" t

