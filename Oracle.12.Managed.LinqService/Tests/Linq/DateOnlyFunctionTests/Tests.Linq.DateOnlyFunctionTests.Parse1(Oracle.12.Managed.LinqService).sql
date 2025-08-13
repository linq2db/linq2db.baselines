BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE('2010-01-' || Lpad(t."TransactionId",2,'0'), 'YYYY-MM-DD')
FROM
	"Transactions" t
WHERE
	EXTRACT(DAY FROM TO_DATE('2010-01-' || Lpad(t."TransactionId",2,'0'), 'YYYY-MM-DD')) > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"Transactions" t1

